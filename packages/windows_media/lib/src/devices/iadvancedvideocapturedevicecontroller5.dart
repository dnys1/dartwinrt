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

import 'videodevicecontrollergetdevicepropertyresult.dart';
import 'videodevicecontrollersetdevicepropertystatus.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController5 =
    '{33512b17-b9cb-4a23-b875-f9eaab535492}';

class IAdvancedVideoCaptureDeviceController5 extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IAdvancedVideoCaptureDeviceController5.fromPtr(super.ptr);

  factory IAdvancedVideoCaptureDeviceController5.from(IInspectable interface) =>
      IAdvancedVideoCaptureDeviceController5.fromPtr(
          interface.toInterface(IID_IAdvancedVideoCaptureDeviceController5));

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyById(
      String propertyId, int? maxPropertyValueSize) {
    final value = calloc<COMObject>();
    final propertyIdHString = propertyId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr propertyId,
                            VTablePointer maxPropertyValueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int propertyId,
                    VTablePointer maxPropertyValueSize,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        propertyIdHString,
        maxPropertyValueSize?.toReference(IntType.uint32).ptr.ref.lpVtbl ??
            nullptr,
        value);

    WindowsDeleteString(propertyIdHString);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceControllerGetDevicePropertyResult.fromPtr(value);
  }

  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyById(
      String propertyId, Object? propertyValue) {
    final value = calloc<Int32>();

    try {
      final propertyIdHString = propertyId.toHString();

      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              IntPtr propertyId,
                              VTablePointer propertyValue,
                              Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int propertyId,
                      VTablePointer propertyValue, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl,
          propertyIdHString,
          propertyValue?.intoBox().ptr.ref.lpVtbl ?? nullptr,
          value);

      WindowsDeleteString(propertyIdHString);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceControllerSetDevicePropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyByExtendedId(
      List<int> extendedPropertyId, int? maxPropertyValueSize) {
    final value = calloc<COMObject>();
    final extendedPropertyIdArray = calloc<Uint8>(extendedPropertyId.length);
    for (var i = 0; i < extendedPropertyId.length; i++) {
      extendedPropertyIdArray[i] = extendedPropertyId[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 extendedPropertyIdSize,
                            Pointer<Uint8> extendedPropertyId,
                            VTablePointer maxPropertyValueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int extendedPropertyIdSize,
                    Pointer<Uint8> extendedPropertyId,
                    VTablePointer maxPropertyValueSize,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        extendedPropertyId.length,
        extendedPropertyIdArray,
        maxPropertyValueSize?.toReference(IntType.uint32).ptr.ref.lpVtbl ??
            nullptr,
        value);

    free(extendedPropertyIdArray);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceControllerGetDevicePropertyResult.fromPtr(value);
  }

  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyByExtendedId(
      List<int> extendedPropertyId, List<int> propertyValue) {
    final value = calloc<Int32>();

    try {
      final extendedPropertyIdArray = calloc<Uint8>(extendedPropertyId.length);
      for (var i = 0; i < extendedPropertyId.length; i++) {
        extendedPropertyIdArray[i] = extendedPropertyId[i];
      }
      final propertyValueArray = calloc<Uint8>(propertyValue.length);
      for (var i = 0; i < propertyValue.length; i++) {
        propertyValueArray[i] = propertyValue[i];
      }

      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 extendedPropertyIdSize,
                              Pointer<Uint8> extendedPropertyId,
                              Uint32 propertyValueSize,
                              Pointer<Uint8> propertyValue,
                              Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int extendedPropertyIdSize,
                      Pointer<Uint8> extendedPropertyId,
                      int propertyValueSize,
                      Pointer<Uint8> propertyValue,
                      Pointer<Int32> value)>()(
          ptr.ref.lpVtbl,
          extendedPropertyId.length,
          extendedPropertyIdArray,
          propertyValue.length,
          propertyValueArray,
          value);

      free(extendedPropertyIdArray);
      free(propertyValueArray);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceControllerSetDevicePropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }
}