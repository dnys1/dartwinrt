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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ivenuedata.dart';

/// Represents the venue associated with a geographic location.
///
/// {@category class}
class VenueData extends IInspectable implements IVenueData {
  VenueData.fromRawPointer(super.ptr);

  // IVenueData methods
  late final _iVenueData = IVenueData.from(this);

  @override
  String get id => _iVenueData.id;

  @override
  String get level => _iVenueData.level;
}
