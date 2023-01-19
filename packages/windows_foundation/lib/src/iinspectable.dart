// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

/// @nodoc
const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';

/// Provides functionality required for all Windows Runtime classes.
///
/// {@category Interface}
/// {@category com}
class IInspectable extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInspectable(super.ptr);

  factory IInspectable.from(IUnknown interface) =>
      IInspectable(interface.toInterface(IID_IInspectable));

  int getIids(Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids) => ptr
      .ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Uint32> iidCount,
                      Pointer<Pointer<GUID>> iids)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids)>()(ptr.ref.lpVtbl, iidCount, iids);

  int getRuntimeClassName(Pointer<IntPtr> className) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<IntPtr> className)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<IntPtr> className)>()(
      ptr.ref.lpVtbl, className);

  int getTrustLevel(Pointer<Int32> trustLevel) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> trustLevel)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> trustLevel)>()(
      ptr.ref.lpVtbl, trustLevel);
}