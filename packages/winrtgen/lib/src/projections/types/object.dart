// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../utilities/utilities.dart';
import '../parameter.dart';

/// Parameter projection for WinRT class, interface, or `boxed` value
/// parameters.
final class ObjectParameterProjection extends ParameterProjection {
  ObjectParameterProjection(super.parameter);

  bool get isMethodFromPropertyValueStatics =>
      method.parent.name == 'Windows.Foundation.IPropertyValueStatics';

  bool get isObjectType => typeProjection.isObjectType;

  @override
  bool get isNullable {
    final parent = method.parent;

    // The key type arguments of IKeyValuePair<Object, V>, IMap<Object, V>,
    // and IMapView<Object, V> cannot be null.
    if (parent.genericParams.length == 2 &&
        (parent.name.endsWith('IKeyValuePair`2') ||
            parent.isCollectionObject)) {
      return switch (parameter.typeIdentifier.genericParameterSequence) {
        0 => false,
        _ => true
      };
    }

    if (isReturnParam) {
      // Constructors cannot return null.
      if (parent.isFactoryInterface) return false;

      // Methods that return collection interfaces cannot return null.
      if (!method.isGetProperty &&
          parameter.typeIdentifier.isCollectionObject) {
        return false;
      }

      // IIterable.First() cannot return null.
      if (method.name == 'First' && parent.isCollectionObject) {
        return false;
      }

      if (isObjectType && isMethodFromPropertyValueStatics) return false;
    }

    // Treat everything else as nullable.
    return true;
  }

  @override
  String get type {
    if (isObjectType) {
      if (!isInParam && !isOutParam && isMethodFromPropertyValueStatics) {
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => 'Pointer<COMObject>',
          _ => 'IPropertyValue'
        };
      }
    }

    return isNullable ? nullable(shortTypeName) : shortTypeName;
  }

  @override
  String get creator {
    if (isObjectType) {
      // IPropertyValueStatics' methods return 'IInspectable' in WinMD (i.e.
      // boxed value). Normally we expose them as 'Object?' and return the
      // underlying value they carry (e.g. String, bool). However, since these
      // methods are used when boxing values, we need the 'IPropertyValue'
      // interface to be returned instead of the underlying value (except for
      // 'CreateEmpty' and 'CreateInspectable' methods).
      if (isMethodFromPropertyValueStatics) {
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => identifier,
          _ => 'IPropertyValue.fromPtr($identifier)'
        };
      }

      final cast = isNullable ? '' : ' as Object';
      return 'IPropertyValue.fromPtr($identifier).value$cast';
    }

    if (type == 'Pointer<COMObject>') return identifier;
    final interfaceName = stripQuestionMarkSuffix(type);
    return '$interfaceName.fromPtr($identifier)';
  }

  @override
  String get toListIdentifier =>
      isObjectType ? 'toObjectList' : super.toListIdentifier;

  @override
  String get toListArg =>
      isObjectType ? '' : '${stripQuestionMarkSuffix(type)}.fromPtr';

  @override
  String get toListInto => isObjectType
      ? isNullable
          ? '$identifier[i]?.intoBox().ptr.ref.lpVtbl ?? nullptr'
          : '$identifier[i].intoBox().ptr.ref.lpVtbl'
      : '$identifier[i].ptr.ref.lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if ($identifier.isNull) {
      free($identifier);
      return null;
    }
''';
  }

  @override
  String get localIdentifier {
    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return identifier;
    }

    if (isInParam) {
      if (typeProjection.isObjectType) {
        return isNullable
            ? '$identifier?.intoBox().ptr.ref.lpVtbl ?? nullptr'
            : '$identifier.intoBox().ptr.ref.lpVtbl';
      } else if (type.startsWith('IIterable<')) {
        final iid = typeProjection.typeIdentifier.iid;
        final nullCheck = isNullable ? '$identifier == null ? nullptr : ' : '';
        return '${nullCheck}IInspectable($identifier.toInterface(${quote(iid)})).ptr.ref.lpVtbl';
      } else {
        return isNullable
            ? '$identifier?.ptr.ref.lpVtbl ?? nullptr'
            : '$identifier.ptr.ref.lpVtbl';
      }
    }
    return identifier;
  }
}
