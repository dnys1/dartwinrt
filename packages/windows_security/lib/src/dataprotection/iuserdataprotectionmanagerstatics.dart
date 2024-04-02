// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'userdataprotectionmanager.dart';

/// @nodoc
const IID_IUserDataProtectionManagerStatics =
    '{977780e8-6dce-4fae-af85-782ac2cf4572}';

class IUserDataProtectionManagerStatics extends IInspectable {
  IUserDataProtectionManagerStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IUserDataProtectionManagerStaticsVtbl>().ref;

  final _IUserDataProtectionManagerStaticsVtbl _vtable;

  factory IUserDataProtectionManagerStatics.from(IInspectable interface) =>
      interface.cast(IUserDataProtectionManagerStatics.fromPtr,
          IID_IUserDataProtectionManagerStatics);

  UserDataProtectionManager? tryGetDefault() {
    final result = calloc<COMObject>();

    final hr = _vtable.TryGetDefault.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return UserDataProtectionManager.fromPtr(result);
  }

  UserDataProtectionManager? tryGetForUser(User? user) {
    final result = calloc<COMObject>();

    final hr = _vtable.TryGetForUser.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer user,
            Pointer<COMObject> result)>()(lpVtbl, user.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return UserDataProtectionManager.fromPtr(result);
  }
}

final class _IUserDataProtectionManagerStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> TryGetDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer user,
              Pointer<COMObject> result)>> TryGetForUser;
}
