// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Defines the size and location of a rectangular surface.
final class RectInt32 implements WinRTStruct {
  RectInt32(this.x, this.y, this.width, this.height);

  final int x;
  final int y;
  final int width;
  final int height;

  @override
  Pointer<NativeRectInt32> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeRectInt32>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..width = width
      ..height = height;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RectInt32 &&
        x == other.x &&
        y == other.y &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode =>
      x.hashCode ^ y.hashCode ^ width.hashCode ^ height.hashCode;
}

/// @nodoc
extension PointerNativeRectInt32Conversion on Pointer<NativeRectInt32> {
  /// Converts this [NativeRectInt32] to a Dart [RectInt32].
  RectInt32 toDart() {
    final ref = this.ref;
    return RectInt32(ref.x, ref.y, ref.width, ref.height);
  }

  /// Creates a `List<RectInt32>` from `Pointer<NativeRectInt32>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeRectInt32>`.
  List<RectInt32> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}