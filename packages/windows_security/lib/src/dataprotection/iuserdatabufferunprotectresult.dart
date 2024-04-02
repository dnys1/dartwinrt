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
import 'package:windows_storage/windows_storage.dart';

import 'userdatabufferunprotectstatus.dart';

/// @nodoc
const IID_IUserDataBufferUnprotectResult =
    '{8efd0e90-fa9a-46a4-a377-01cebf1e74d8}';

class IUserDataBufferUnprotectResult extends IInspectable {
  IUserDataBufferUnprotectResult.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IUserDataBufferUnprotectResultVtbl>().ref;

  final _IUserDataBufferUnprotectResultVtbl _vtable;

  factory IUserDataBufferUnprotectResult.from(IInspectable interface) =>
      interface.cast(IUserDataBufferUnprotectResult.fromPtr,
          IID_IUserDataBufferUnprotectResult);

  UserDataBufferUnprotectStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UserDataBufferUnprotectStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  IBuffer? get unprotectedBuffer {
    final value = calloc<COMObject>();

    final hr = _vtable.get_UnprotectedBuffer.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IBuffer.fromPtr(value);
  }
}

final class _IUserDataBufferUnprotectResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_UnprotectedBuffer;
}
