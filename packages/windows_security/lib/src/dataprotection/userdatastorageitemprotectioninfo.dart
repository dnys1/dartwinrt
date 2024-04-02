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

import 'iuserdatastorageitemprotectioninfo.dart';
import 'userdataavailability.dart';

/// Contains information about the protection of a user data storage item.
class UserDataStorageItemProtectionInfo extends IInspectable
    implements IUserDataStorageItemProtectionInfo {
  UserDataStorageItemProtectionInfo.fromPtr(super.ptr);

  late final _iUserDataStorageItemProtectionInfo =
      IUserDataStorageItemProtectionInfo.from(this);

  @override
  UserDataAvailability get availability =>
      _iUserDataStorageItemProtectionInfo.availability;
}
