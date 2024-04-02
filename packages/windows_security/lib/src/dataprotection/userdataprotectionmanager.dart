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
import 'package:windows_system/windows_system.dart';

import 'iuserdataprotectionmanager.dart';
import 'iuserdataprotectionmanagerstatics.dart';
import 'userdataavailability.dart';
import 'userdatabufferunprotectresult.dart';
import 'userdatastorageitemprotectioninfo.dart';
import 'userdatastorageitemprotectionstatus.dart';

/// Provides static methods to instantiate UserDataProtectionManager for the
/// current or provided user. An instance of UserDataProtectionManager provides
/// methods to protect / unprotect files and buffers.
class UserDataProtectionManager extends IInspectable
    implements IUserDataProtectionManager {
  UserDataProtectionManager.fromPtr(super.ptr);

  static const _className =
      'Windows.Security.DataProtection.UserDataProtectionManager';

  static UserDataProtectionManager? tryGetDefault() => createActivationFactory(
          IUserDataProtectionManagerStatics.fromPtr,
          _className,
          IID_IUserDataProtectionManagerStatics)
      .tryGetDefault();

  static UserDataProtectionManager? tryGetForUser(User? user) =>
      createActivationFactory(IUserDataProtectionManagerStatics.fromPtr,
              _className, IID_IUserDataProtectionManagerStatics)
          .tryGetForUser(user);

  late final _iUserDataProtectionManager =
      IUserDataProtectionManager.from(this);

  @override
  Future<UserDataStorageItemProtectionStatus> protectStorageItemAsync(
          IStorageItem? storageItem, UserDataAvailability availability) =>
      _iUserDataProtectionManager.protectStorageItemAsync(
          storageItem, availability);

  @override
  Future<UserDataStorageItemProtectionInfo?> getStorageItemProtectionInfoAsync(
          IStorageItem? storageItem) =>
      _iUserDataProtectionManager
          .getStorageItemProtectionInfoAsync(storageItem);

  @override
  Future<IBuffer?> protectBufferAsync(
          IBuffer? unprotectedBuffer, UserDataAvailability availability) =>
      _iUserDataProtectionManager.protectBufferAsync(
          unprotectedBuffer, availability);

  @override
  Future<UserDataBufferUnprotectResult?> unprotectBufferAsync(
          IBuffer? protectedBuffer) =>
      _iUserDataProtectionManager.unprotectBufferAsync(protectedBuffer);

  @override
  bool isContinuedDataAvailabilityExpected(UserDataAvailability availability) =>
      _iUserDataProtectionManager
          .isContinuedDataAvailabilityExpected(availability);

  @override
  int add_DataAvailabilityStateChanged(Pointer<COMObject> handler) =>
      _iUserDataProtectionManager.add_DataAvailabilityStateChanged(handler);

  @override
  void remove_DataAvailabilityStateChanged(int token) =>
      _iUserDataProtectionManager.remove_DataAvailabilityStateChanged(token);
}
