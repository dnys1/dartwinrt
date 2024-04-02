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

import 'binarystringencoding.dart';

/// @nodoc
const IID_ICryptographicBufferStatics =
    '{320b7e22-3cb0-4cdf-8663-1d28910065eb}';

class ICryptographicBufferStatics extends IInspectable {
  ICryptographicBufferStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICryptographicBufferStaticsVtbl>().ref;

  final _ICryptographicBufferStaticsVtbl _vtable;

  factory ICryptographicBufferStatics.from(IInspectable interface) =>
      interface.cast(
          ICryptographicBufferStatics.fromPtr, IID_ICryptographicBufferStatics);

  bool compare(IBuffer? object1, IBuffer? object2) {
    final isEqual = calloc<Bool>();

    try {
      final hr = _vtable.Compare.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer object1,
                  VTablePointer object2, Pointer<Bool> isEqual)>()(
          lpVtbl, object1.lpVtbl, object2.lpVtbl, isEqual);

      if (FAILED(hr)) throwWindowsException(hr);

      return isEqual.value;
    } finally {
      free(isEqual);
    }
  }

  IBuffer? generateRandom(int length) {
    final buffer = calloc<COMObject>();

    final hr = _vtable.GenerateRandom.asFunction<
        int Function(VTablePointer lpVtbl, int length,
            Pointer<COMObject> buffer)>()(lpVtbl, length, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  int generateRandomNumber() {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.GenerateRandomNumber.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  IBuffer? createFromByteArray(List<int> value) {
    final buffer = calloc<COMObject>();
    final valueArray = value.toArray<Uint8>();

    final hr = _vtable.CreateFromByteArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint8> value, Pointer<COMObject> buffer)>()(
        lpVtbl, value.length, valueArray, buffer);

    free(valueArray);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  List<int> copyToByteArray(IBuffer? buffer) {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint8>>();

    try {
      final hr = _vtable.CopyToByteArray.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer buffer,
                  Pointer<Uint32> valueSize, Pointer<Pointer<Uint8>> value)>()(
          lpVtbl, buffer.lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  IBuffer? decodeFromHexString(String value) {
    final buffer = calloc<COMObject>();

    final hr = _vtable.DecodeFromHexString.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> buffer)>()(lpVtbl, value.toHString(), buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  String encodeToHexString(IBuffer? buffer) {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.EncodeToHexString.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer buffer,
              Pointer<IntPtr> value)>()(lpVtbl, buffer.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IBuffer? decodeFromBase64String(String value) {
    final buffer = calloc<COMObject>();

    final hr = _vtable.DecodeFromBase64String.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> buffer)>()(lpVtbl, value.toHString(), buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  String encodeToBase64String(IBuffer? buffer) {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.EncodeToBase64String.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer buffer,
              Pointer<IntPtr> value)>()(lpVtbl, buffer.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IBuffer? convertStringToBinary(String value, BinaryStringEncoding encoding) {
    final buffer = calloc<COMObject>();

    final hr = _vtable.ConvertStringToBinary.asFunction<
            int Function(VTablePointer lpVtbl, int value, int encoding,
                Pointer<COMObject> buffer)>()(
        lpVtbl, value.toHString(), encoding.value, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  String convertBinaryToString(BinaryStringEncoding encoding, IBuffer? buffer) {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.ConvertBinaryToString.asFunction<
              int Function(VTablePointer lpVtbl, int encoding,
                  VTablePointer buffer, Pointer<IntPtr> value)>()(
          lpVtbl, encoding.value, buffer.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ICryptographicBufferStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer object1,
              VTablePointer object2, Pointer<Bool> isEqual)>> Compare;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 length,
              Pointer<COMObject> buffer)>> GenerateRandom;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      GenerateRandomNumber;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint8> value,
              Pointer<COMObject> buffer)>> CreateFromByteArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer buffer,
              Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint8>> value)>> CopyToByteArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<COMObject> buffer)>> DecodeFromHexString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
              Pointer<IntPtr> value)>> EncodeToHexString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<COMObject> buffer)>> DecodeFromBase64String;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
              Pointer<IntPtr> value)>> EncodeToBase64String;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value, Int32 encoding,
              Pointer<COMObject> buffer)>> ConvertStringToBinary;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 encoding,
              VTablePointer buffer,
              Pointer<IntPtr> value)>> ConvertBinaryToString;
}
