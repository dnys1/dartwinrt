// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('creator', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier
            .creator,
        equals('Calendar.fromRawPointer'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier
            .creator,
        isNull);
    expect(
        propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier
            .creator,
        isNull);
    expect(
        propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier
            .creator,
        isNull);

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(
        jsonObject.interfaces[2].typeSpec!.creator,
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer, iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}')"));
    expect(
        jsonObject.interfaces[3].typeSpec!.creator,
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IKeyValuePair.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer))'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        propertySet
            .findMethod('Insert')!
            .parameters
            .last
            .typeIdentifier
            .creator,
        isNull);

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier
            .creator,
        equals('PhoneNumberFormatter.fromRawPointer'));

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(
        stringMap.interfaces[0].typeSpec!.creator,
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
    expect(
        stringMap.interfaces[1].typeSpec!.creator,
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(stringMap.interfaces[2].typeSpec!.creator,
        equals('IObservableMap.fromRawPointer'));
    expect(
        stringMap.findMethod('First')!.returnType.typeIdentifier.creator,
        equals(
            '(Pointer<COMObject> ptr) => IIterator.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(
        stringMap.findMethod('GetView')!.returnType.typeIdentifier.creator,
        equals(
            "(Pointer<COMObject> ptr) => IMapView.fromRawPointer(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier
            .creator,
        equals(
            "(Pointer<COMObject> ptr) => IVector.fromRawPointer(ptr, iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')"));
    expect(
        fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier
            .creator,
        equals(
            '(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: StorageFile.fromRawPointer)'));
    expect(
        fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier
            .creator,
        equals(
            "(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr, creator: StorageFile.fromRawPointer, iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'))"));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        storageFileQueryResult2
            .findMethod('GetMatchingPropertiesWithRanges')!
            .returnType
            .typeIdentifier
            .creator,
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr, iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'), iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}')"));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier
            .creator,
        equals(
            "(Pointer<COMObject> ptr) => IMapView.fromRawPointer(ptr, enumKeyCreator: PedometerStepKind.from, creator: PedometerReading.fromRawPointer, iterableIid: '{098f29cb-bc91-5639-a541-d5a4811ec35b}')"));
  });

  group('iid', () {
    test('returns the IID of IAsyncOperation<IVectorView<StorageFile>>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.IFileOpenPicker')!;
      expect(
          typeDef
              .findMethod('PickMultipleFilesAsync')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{03362e33-e413-5f29-97d0-48a4780935f9}'));
    });

    test('returns the IID of IMap<String, IVectorView<TextSegment>>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Search.IStorageFileQueryResult2')!;
      expect(
          typeDef
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{a31b6540-b2b1-536d-818f-8ade7051c3b3}'));
    });

    test('returns the IID of IMapView<PedometerStepKind, PedometerReading>',
        () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Devices.Sensors.IPedometer2')!;
      expect(
          typeDef
              .findMethod('GetCurrentReadings')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
    });

    test('returns the IID of IAsyncOperation<IReference<TimeSpan>>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
      expect(
          typeDef
              .findMethod('ShowAtAsync')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
    });
  });

  test('shortName', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('Calendar'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier
            .shortName,
        equals('Guid'));
    expect(
        propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier
            .shortName,
        equals('Point'));
    expect(
        propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier
            .shortName,
        equals('Duration'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(jsonObject.interfaces[2].typeSpec!.shortName,
        equals('IMap<String, IJsonValue?>'));
    expect(jsonObject.interfaces[3].typeSpec!.shortName,
        equals('IIterable<IKeyValuePair<String, IJsonValue?>>'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        propertySet
            .findMethod('Insert')!
            .parameters
            .last
            .typeIdentifier
            .shortName,
        equals('Object'));

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier
            .shortName,
        equals('PhoneNumberFormatter'));

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(stringMap.interfaces[0].typeSpec!.shortName,
        equals('IMap<String, String>'));
    expect(stringMap.interfaces[1].typeSpec!.shortName,
        equals('IIterable<IKeyValuePair<String, String>>'));
    expect(stringMap.interfaces[2].typeSpec!.shortName,
        equals('IObservableMap<String, String>'));
    expect(stringMap.findMethod('First')!.returnType.typeIdentifier.shortName,
        equals('IIterator<IKeyValuePair<String, String>>'));
    expect(stringMap.findMethod('GetView')!.returnType.typeIdentifier.shortName,
        equals('IMapView<String, String>'));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('IVector<String>'));
    expect(
        fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('IAsyncOperation<StorageFile?>'));
    expect(
        fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('IAsyncOperation<IVectorView<StorageFile>>'));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        storageFileQueryResult2
            .findMethod('GetMatchingPropertiesWithRanges')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('IMap<String, IVectorView<TextSegment>?>'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier
            .shortName,
        equals('IMapView<PedometerStepKind, PedometerReading?>'));
  });

  group('signature', () {
    test('returns the signature of DateTime', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;
      final typeIdentifier =
          typeDef.findMethod('GetDateTime')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.DateTime;i8)'));
    });

    test('returns the signature of Guid', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;
      final typeIdentifier =
          typeDef.findMethod('GetGuid')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature, equals('g16'));
    });

    test('returns the signature of Point', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;
      final typeIdentifier =
          typeDef.findMethod('GetPoint')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.Point;f4;f4)'));
    });

    test('returns the signature of TimeSpan', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;
      final typeIdentifier =
          typeDef.findMethod('GetTimeSpan')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.TimeSpan;i8)'));
    });

    test('returns the signature of AsyncActionCompletedHandler', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
      final typeIdentifier =
          typeDef.findMethod('get_Completed')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));
    });

    test('returns the signature of AsyncStatus', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
      final typeIdentifier =
          typeDef.findMethod('get_Status')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('enum(Windows.Foundation.AsyncStatus;i4)'));
    });

    test('returns the signature of Uri', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IUriRuntimeClassFactory')!;
      final typeIdentifier =
          typeDef.findMethod('CreateUri')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'rc(Windows.Foundation.Uri;{9e365e57-48b2-4160-956f-c7385120bbfc})'));
    });

    test('returns the signature of IMap<String, String>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.Collections.StringMap')!;
      expect(
          typeDef.interfaces.elementAt(0).typeSpec!.signature,
          equals(
              'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'));
    });

    test('returns the signature of IMap<Guid, Object>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Media.MediaProperties.MediaPropertySet')!;
      expect(
          typeDef.interfaces.elementAt(0).typeSpec!.signature,
          equals(
              'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'));
    });

    test('returns the signature of IIterable<IKeyValuePair<Guid, Object>>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Media.MediaProperties.MediaPropertySet')!;
      expect(
          typeDef.interfaces.elementAt(1).typeSpec!.signature,
          equals(
              'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'));
    });

    test('returns the signature of IAsyncOperation<IReference<Duration>>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
      final typeIdentifier =
          typeDef.findMethod('ShowAtAsync')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'));
    });

    test(
        'returns the signature of IMapView<PedometerStepKind, PedometerReading>',
        () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Devices.Sensors.IPedometer2')!;
      final typeIdentifier =
          typeDef.findMethod('GetCurrentReadings')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'));
    });
  });
}