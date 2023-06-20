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

import 'tensorint8bit.dart';

/// @nodoc
const IID_ITensorInt8BitStatics = '{b1a12284-095c-4c76-a661-ac4cee1f3e8b}';

class ITensorInt8BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorInt8BitStatics.fromPtr(super.ptr);

  factory ITensorInt8BitStatics.from(IInspectable interface) =>
      ITensorInt8BitStatics.fromPtr(
          interface.toInterface(IID_ITensorInt8BitStatics));

  TensorInt8Bit? create() {
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

    return TensorInt8Bit.fromPtr(retValuePtr);
  }

  TensorInt8Bit? create2(IIterable<int>? shape) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer shape,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer shape,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, shapePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorInt8Bit.fromPtr(retValuePtr);
  }

  TensorInt8Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;
    final pDataArray = calloc<Uint8>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer shape,
                            Uint32 dataSize,
                            Pointer<Uint8> data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Uint8> data,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, shapePtr, data.length, pDataArray, retValuePtr);

    free(pDataArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorInt8Bit.fromPtr(retValuePtr);
  }

  TensorInt8Bit? createFromIterable(
      IIterable<int>? shape, IIterable<int>? data) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;
    final dataPtr = data == null
        ? nullptr
        : IInspectable(
                data.toInterface('{88318266-f3fd-50fc-8f08-b823a41b60c1}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer shape,
                                VTablePointer data,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer shape,
                        VTablePointer data, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, shapePtr, dataPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorInt8Bit.fromPtr(retValuePtr);
  }
}