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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'endpointpair.dart';
import 'hostname.dart';

/// @nodoc
const IID_IEndpointPairFactory = '{b609d971-64e0-442b-aa6f-cc8c8f181f78}';

/// {@category interface}
class IEndpointPairFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IEndpointPairFactory.fromRawPointer(super.ptr);

  factory IEndpointPairFactory.from(IInspectable interface) =>
      IEndpointPairFactory.fromRawPointer(
          interface.toInterface(IID_IEndpointPairFactory));

  EndpointPair createEndpointPair(
      HostName localHostName,
      String localServiceName,
      HostName remoteHostName,
      String remoteServiceName) {
    final retValuePtr = calloc<COMObject>();

    final localServiceNameHString = convertToHString(localServiceName);

    final remoteServiceNameHString = convertToHString(remoteServiceName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            LPVTBL localHostName,
                            IntPtr localServiceName,
                            LPVTBL remoteHostName,
                            IntPtr remoteServiceName,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    LPVTBL localHostName,
                    int localServiceName,
                    LPVTBL remoteHostName,
                    int remoteServiceName,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        localHostName.ptr.ref.lpVtbl,
        localServiceNameHString,
        remoteHostName.ptr.ref.lpVtbl,
        remoteServiceNameHString,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(localServiceNameHString);

    WindowsDeleteString(remoteServiceNameHString);

    return EndpointPair.fromRawPointer(retValuePtr);
  }
}