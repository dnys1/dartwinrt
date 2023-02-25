// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'ivectorview.dart';

class _IVectorViewBool extends IVectorView<bool> {
  _IVectorViewBool.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  bool getAt(int index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 index, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int index, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(bool value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Bool value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, bool value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<bool> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Bool>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Bool> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Bool> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewGuid extends IVectorView<Guid> {
  _IVectorViewGuid.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Guid getAt(int index) {
    final retValuePtr = calloc<GUID>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 index, Pointer<GUID>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int index, Pointer<GUID>)>()(
              ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Guid value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueNativeGuidPtr = value.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, GUID value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueNativeGuidPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(valueNativeGuidPtr);

      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<Guid> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<GUID>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<GUID> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<GUID> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewInspectable<T> extends IVectorView<T> {
  _IVectorViewInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return _creator!(retValuePtr);
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(ptr.ref.lpVtbl,
          (value as IInspectable).ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(_creator!, length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewInt16 extends IVectorView<int> {
  _IVectorViewInt16.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int16>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int16>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int16 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int16> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int16> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewInt32 extends IVectorView<int> {
  _IVectorViewInt32.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int32 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewInt64 extends IVectorView<int> {
  _IVectorViewInt64.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int64>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int64>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int64 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int64> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int64> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewString extends IVectorView<String> {
  _IVectorViewString.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  String getAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueHString = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueHString, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(valueHString);

      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<String> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<IntPtr>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<IntPtr> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<IntPtr> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewUint8 extends IVectorView<int> {
  _IVectorViewUint8.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint8>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint8>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint8 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint8>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint8> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint8> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewUint16 extends IVectorView<int> {
  _IVectorViewUint16.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint16>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint16>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint16 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint16> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint16> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewUint32 extends IVectorView<int> {
  _IVectorViewUint32.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint32 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewUint64 extends IVectorView<int> {
  _IVectorViewUint64.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint64>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint64>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint64 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint64> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint64> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewUri extends IVectorView<Uri> {
  _IVectorViewUri.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Uri getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }

  @override
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      valueUri.release();

      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<Uri> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray
            .toList(winrt_uri.Uri.fromRawPointer, length: valueSize)
            .map((winrtUri) => Uri.parse(winrtUri.toString())));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewWinRTEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int32 value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize).map(_enumCreator!));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}

class _IVectorViewWinRTFlagsEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTFlagsEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint32 value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize).map(_enumCreator!));
      }
      free(pArray);
      free(retValuePtr);
    }
  }
}