// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'webaccount.dart';
import 'webaccountprovider.dart';
import 'webaccountstate.dart';

/// @nodoc
const IID_IWebAccountFactory = '{ac9afb39-1de9-4e92-b78f-0581a87f6e5c}';

/// {@category interface}
class IWebAccountFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebAccountFactory.fromPtr(super.ptr);

  factory IWebAccountFactory.from(IInspectable interface) =>
      IWebAccountFactory.fromPtr(interface.toInterface(IID_IWebAccountFactory));

  WebAccount createWebAccount(WebAccountProvider webAccountProvider,
      String userName, WebAccountState state) {
    final retValuePtr = calloc<COMObject>();
    final webAccountProviderPtr = webAccountProvider.ptr.ref.lpVtbl;
    final userNameHString = userName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer webAccountProvider,
                            IntPtr userName,
                            Int32 state,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer webAccountProvider,
                    int userName,
                    int state,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        webAccountProviderPtr, userNameHString, state.value, retValuePtr);

    WindowsDeleteString(userNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return WebAccount.fromPtr(retValuePtr);
  }
}