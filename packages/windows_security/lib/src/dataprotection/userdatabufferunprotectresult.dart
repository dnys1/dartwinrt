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

import 'iuserdatabufferunprotectresult.dart';
import 'userdatabufferunprotectstatus.dart';

/// Contains result status of unprotecting a buffer and if succeeded, the
/// unprotected buffer.
class UserDataBufferUnprotectResult extends IInspectable
    implements IUserDataBufferUnprotectResult {
  UserDataBufferUnprotectResult.fromPtr(super.ptr);

  late final _iUserDataBufferUnprotectResult =
      IUserDataBufferUnprotectResult.from(this);

  @override
  UserDataBufferUnprotectStatus get status =>
      _iUserDataBufferUnprotectResult.status;

  @override
  IBuffer? get unprotectedBuffer =>
      _iUserDataBufferUnprotectResult.unprotectedBuffer;
}
