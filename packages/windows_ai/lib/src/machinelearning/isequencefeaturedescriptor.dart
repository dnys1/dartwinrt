// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ilearningmodelfeaturedescriptor.dart';

/// @nodoc
const IID_ISequenceFeatureDescriptor = '{84f6945a-562b-4d62-a851-739aced96668}';

class ISequenceFeatureDescriptor extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ISequenceFeatureDescriptor.fromPtr(super.ptr);

  factory ISequenceFeatureDescriptor.from(IInspectable interface) =>
      ISequenceFeatureDescriptor.fromPtr(
          interface.toInterface(IID_ISequenceFeatureDescriptor));

  ILearningModelFeatureDescriptor? get elementDescriptor {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ILearningModelFeatureDescriptor.fromPtr(retValuePtr);
  }
}