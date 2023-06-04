// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// This is a Windows Runtime equivalent of the Desktop DXGI_SURFACE_DESC
/// structure. Describes an IDirect3DSurface.
final class Direct3DSurfaceDescription implements WinRTStruct {
  Direct3DSurfaceDescription(
      this.width, this.height, this.format, this.multisampleDescription);

  final int width;
  final int height;
  final int format;
  final NativeDirect3DMultisampleDescription multisampleDescription;

  @override
  Pointer<NativeDirect3DSurfaceDescription> toNative(
      {Allocator allocator = malloc}) {
    final ptr = allocator<NativeDirect3DSurfaceDescription>();
    ptr.ref.width = width;
    ptr.ref.height = height;
    ptr.ref.format = format;
    ptr.ref.multisampleDescription = multisampleDescription;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Direct3DSurfaceDescription &&
        width == other.width &&
        height == other.height &&
        format == other.format &&
        multisampleDescription == other.multisampleDescription;
  }

  @override
  int get hashCode =>
      width.hashCode ^
      height.hashCode ^
      format.hashCode ^
      multisampleDescription.hashCode;
}

/// @nodoc
extension PointerNativeDirect3DSurfaceDescriptionConversion
    on Pointer<NativeDirect3DSurfaceDescription> {
  /// Converts this [NativeDirect3DSurfaceDescription] to a Dart
  /// [Direct3DSurfaceDescription].
  Direct3DSurfaceDescription toDart() => Direct3DSurfaceDescription(
      ref.width, ref.height, ref.format, ref.multisampleDescription);
}