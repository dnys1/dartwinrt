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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'scheduledtoastnotification.dart';

/// @nodoc
const IID_IScheduledToastNotificationFactory =
    '{e7bed191-0bb9-4189-8394-31761b476fd7}';

/// {@category interface}
class IScheduledToastNotificationFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IScheduledToastNotificationFactory.fromRawPointer(super.ptr);

  factory IScheduledToastNotificationFactory.from(IInspectable interface) =>
      IScheduledToastNotificationFactory.fromRawPointer(
          interface.toInterface(IID_IScheduledToastNotificationFactory));

  ScheduledToastNotification createScheduledToastNotification(
      XmlDocument content, DateTime deliveryTime) {
    final retValuePtr = calloc<COMObject>();

    final deliveryTimeDateTime =
        deliveryTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL content,
                            Uint64 deliveryTime, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL content, int deliveryTime,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        content.ptr.ref.lpVtbl, deliveryTimeDateTime, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return ScheduledToastNotification.fromRawPointer(retValuePtr);
  }

  ScheduledToastNotification createScheduledToastNotificationRecurring(
      XmlDocument content,
      DateTime deliveryTime,
      Duration snoozeInterval,
      int maximumSnoozeCount) {
    final retValuePtr = calloc<COMObject>();

    final deliveryTimeDateTime =
        deliveryTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final snoozeIntervalDuration = snoozeInterval.inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            LPVTBL content,
                            Uint64 deliveryTime,
                            Uint64 snoozeInterval,
                            Uint32 maximumSnoozeCount,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    LPVTBL content,
                    int deliveryTime,
                    int snoozeInterval,
                    int maximumSnoozeCount,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        content.ptr.ref.lpVtbl,
        deliveryTimeDateTime,
        snoozeIntervalDuration,
        maximumSnoozeCount,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return ScheduledToastNotification.fromRawPointer(retValuePtr);
  }
}