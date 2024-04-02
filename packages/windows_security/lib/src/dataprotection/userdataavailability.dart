// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Identifies the availability of protected data.
enum UserDataAvailability implements WinRTEnum {
  always(0),
  afterFirstUnlock(1),
  whileUnlocked(2);

  @override
  final int value;

  const UserDataAvailability(this.value);

  factory UserDataAvailability.from(int value) =>
      UserDataAvailability.values.byValue(value);
}
