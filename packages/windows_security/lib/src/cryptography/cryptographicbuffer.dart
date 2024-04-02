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
import 'icryptographicbufferstatics.dart';

/// Contains static methods that implement data management functionality common
/// to cryptographic operations.
class CryptographicBuffer extends IInspectable {
  CryptographicBuffer.fromPtr(super.ptr);

  static const _className = 'Windows.Security.Cryptography.CryptographicBuffer';

  static bool compare(IBuffer? object1, IBuffer? object2) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .compare(object1, object2);

  static IBuffer? generateRandom(int length) => createActivationFactory(
          ICryptographicBufferStatics.fromPtr,
          _className,
          IID_ICryptographicBufferStatics)
      .generateRandom(length);

  static int generateRandomNumber() => createActivationFactory(
          ICryptographicBufferStatics.fromPtr,
          _className,
          IID_ICryptographicBufferStatics)
      .generateRandomNumber();

  static IBuffer? createFromByteArray(List<int> value) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .createFromByteArray(value);

  static List<int> copyToByteArray(IBuffer? buffer) => createActivationFactory(
          ICryptographicBufferStatics.fromPtr,
          _className,
          IID_ICryptographicBufferStatics)
      .copyToByteArray(buffer);

  static IBuffer? decodeFromHexString(String value) => createActivationFactory(
          ICryptographicBufferStatics.fromPtr,
          _className,
          IID_ICryptographicBufferStatics)
      .decodeFromHexString(value);

  static String encodeToHexString(IBuffer? buffer) => createActivationFactory(
          ICryptographicBufferStatics.fromPtr,
          _className,
          IID_ICryptographicBufferStatics)
      .encodeToHexString(buffer);

  static IBuffer? decodeFromBase64String(String value) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .decodeFromBase64String(value);

  static String encodeToBase64String(IBuffer? buffer) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .encodeToBase64String(buffer);

  static IBuffer? convertStringToBinary(
          String value, BinaryStringEncoding encoding) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .convertStringToBinary(value, encoding);

  static String convertBinaryToString(
          BinaryStringEncoding encoding, IBuffer? buffer) =>
      createActivationFactory(ICryptographicBufferStatics.fromPtr, _className,
              IID_ICryptographicBufferStatics)
          .convertBinaryToString(encoding, buffer);
}
