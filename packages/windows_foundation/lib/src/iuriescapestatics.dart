// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../../internal.dart';
import 'winrt_callbacks.dart';
import 'winrt_helpers.dart';

/// @nodoc
const IID_IUriEscapeStatics = '{c1d432ba-c824-4452-a7fd-512bc3bbe9a1}';

/// {@category Interface}
/// {@category winrt}
class IUriEscapeStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUriEscapeStatics.fromRawPointer(super.ptr);

  factory IUriEscapeStatics.from(IInspectable interface) =>
      IUriEscapeStatics.fromRawPointer(
          interface.toInterface(IID_IUriEscapeStatics));

  String unescapeComponent(String toUnescape) {
    final retValuePtr = calloc<HSTRING>();
    final toUnescapeHstring = convertToHString(toUnescape);

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, IntPtr toUnescape, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int toUnescape, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, toUnescapeHstring, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(toUnescapeHstring);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String escapeComponent(String toEscape) {
    final retValuePtr = calloc<HSTRING>();
    final toEscapeHstring = convertToHString(toEscape);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, IntPtr toEscape, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int toEscape, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, toEscapeHstring, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(toEscapeHstring);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
