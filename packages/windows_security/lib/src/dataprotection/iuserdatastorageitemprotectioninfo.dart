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

import 'userdataavailability.dart';

/// @nodoc
const IID_IUserDataStorageItemProtectionInfo =
    '{5b6680f6-e87f-40a1-b19d-a6187a0c662f}';

class IUserDataStorageItemProtectionInfo extends IInspectable {
  IUserDataStorageItemProtectionInfo.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IUserDataStorageItemProtectionInfoVtbl>().ref;

  final _IUserDataStorageItemProtectionInfoVtbl _vtable;

  factory IUserDataStorageItemProtectionInfo.from(IInspectable interface) =>
      interface.cast(IUserDataStorageItemProtectionInfo.fromPtr,
          IID_IUserDataStorageItemProtectionInfo);

  UserDataAvailability get availability {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Availability.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UserDataAvailability.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IUserDataStorageItemProtectionInfoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Availability;
}
