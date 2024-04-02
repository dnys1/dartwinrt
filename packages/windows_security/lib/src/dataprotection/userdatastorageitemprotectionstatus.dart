// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Result of protecting a storage item.
enum UserDataStorageItemProtectionStatus implements WinRTEnum {
  succeeded(0),
  notProtectable(1),
  dataUnavailable(2);

  @override
  final int value;

  const UserDataStorageItemProtectionStatus(this.value);

  factory UserDataStorageItemProtectionStatus.from(int value) =>
      UserDataStorageItemProtectionStatus.values.byValue(value);
}
