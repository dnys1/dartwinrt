// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Contains encoding formats that can be used in the ConvertStringToBinary and
/// ConvertBinaryToString methods.
enum BinaryStringEncoding implements WinRTEnum {
  utf8(0),
  utf16LE(1),
  utf16BE(2);

  @override
  final int value;

  const BinaryStringEncoding(this.value);

  factory BinaryStringEncoding.from(int value) =>
      BinaryStringEncoding.values.byValue(value);
}
