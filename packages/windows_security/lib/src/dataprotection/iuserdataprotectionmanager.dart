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

import 'userdataavailability.dart';
import 'userdatabufferunprotectresult.dart';
import 'userdataprotectionmanager.dart';
import 'userdatastorageitemprotectioninfo.dart';
import 'userdatastorageitemprotectionstatus.dart';

/// @nodoc
const IID_IUserDataProtectionManager = '{1f13237d-b42e-4a88-9480-0f240924c876}';

class IUserDataProtectionManager extends IInspectable {
  IUserDataProtectionManager.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUserDataProtectionManagerVtbl>().ref;

  final _IUserDataProtectionManagerVtbl _vtable;

  factory IUserDataProtectionManager.from(IInspectable interface) => interface
      .cast(IUserDataProtectionManager.fromPtr, IID_IUserDataProtectionManager);

  Future<UserDataStorageItemProtectionStatus> protectStorageItemAsync(
      IStorageItem? storageItem, UserDataAvailability availability) {
    final result = calloc<COMObject>();

    final hr = _vtable.ProtectStorageItemAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer storageItem,
                int availability, Pointer<COMObject> result)>()(
        lpVtbl, storageItem.lpVtbl, availability.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<UserDataStorageItemProtectionStatus>.fromPtr(result,
            tResultEnumCreator: UserDataStorageItemProtectionStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<UserDataStorageItemProtectionInfo?> getStorageItemProtectionInfoAsync(
      IStorageItem? storageItem) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetStorageItemProtectionInfoAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer storageItem,
            Pointer<COMObject> result)>()(lpVtbl, storageItem.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<UserDataStorageItemProtectionInfo?>.fromPtr(result,
            tResultObjectCreator: UserDataStorageItemProtectionInfo.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IBuffer?> protectBufferAsync(
      IBuffer? unprotectedBuffer, UserDataAvailability availability) {
    final result = calloc<COMObject>();

    final hr = _vtable.ProtectBufferAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer unprotectedBuffer,
                int availability, Pointer<COMObject> result)>()(
        lpVtbl, unprotectedBuffer.lpVtbl, availability.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IBuffer?>.fromPtr(result,
        tResultObjectCreator: IBuffer.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<UserDataBufferUnprotectResult?> unprotectBufferAsync(
      IBuffer? protectedBuffer) {
    final result = calloc<COMObject>();

    final hr = _vtable.UnprotectBufferAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer protectedBuffer,
                Pointer<COMObject> result)>()(
        lpVtbl, protectedBuffer.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<UserDataBufferUnprotectResult?>.fromPtr(result,
            tResultObjectCreator: UserDataBufferUnprotectResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  bool isContinuedDataAvailabilityExpected(UserDataAvailability availability) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.IsContinuedDataAvailabilityExpected.asFunction<
          int Function(VTablePointer lpVtbl, int availability,
              Pointer<Bool> value)>()(lpVtbl, availability.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_DataAvailabilityStateChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_DataAvailabilityStateChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_DataAvailabilityStateChanged(int token) {
    final hr = _vtable.remove_DataAvailabilityStateChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IUserDataProtectionManagerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer storageItem,
              Int32 availability,
              Pointer<COMObject> result)>> ProtectStorageItemAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer storageItem,
              Pointer<COMObject> result)>> GetStorageItemProtectionInfoAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer unprotectedBuffer,
              Int32 availability,
              Pointer<COMObject> result)>> ProtectBufferAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer protectedBuffer,
              Pointer<COMObject> result)>> UnprotectBufferAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 availability,
              Pointer<Bool> value)>> IsContinuedDataAvailabilityExpected;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_DataAvailabilityStateChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_DataAvailabilityStateChanged;
}
