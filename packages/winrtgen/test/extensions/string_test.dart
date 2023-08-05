// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('capitalize', () {
    expect('value'.capitalize(), equals('Value'));
    expect('camelCase'.capitalize(), equals('CamelCase'));
    expect('X'.capitalize(), equals('X'));
    expect(''.capitalize(), isEmpty);
  });

  test('isFullyQualifiedType', () {
    expect('Windows.Foundation.AsyncStatus'.isFullyQualifiedType, isTrue);
    expect('Windows.Data.Json.JsonArray'.isFullyQualifiedType, isTrue);
    expect('Windows'.isFullyQualifiedType, isFalse);
    expect('Windows.Foundation'.isFullyQualifiedType, isFalse);
    expect('not a fully qualified type'.isFullyQualifiedType, isFalse);
  });

  test('isIID', () {
    expect('ca30221d-86d9-40fb-a26b-d44eb7cf08ea'.isIID, isFalse);
    expect('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}'.isIID, isTrue);
    expect('{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}'.isIID, isTrue);
    expect('ca30221d-86d9-40fb-a26b-d44eb7cf08ea}'.isIID, isFalse);
    expect('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea'.isIID, isFalse);
    expect('not an IID'.isIID, isFalse);
  });

  test('isImportLine', () {
    expect("import 'dart:ffi';".isImportLine, isTrue);
    expect("import 'package:win32/win32.dart';".isImportLine, isTrue);
    expect("import 'package:win32/win32.dart' show COMObject;".isImportLine,
        isTrue);
    expect("import 'package:win32/win32.dart' hide COMObject;".isImportLine,
        isTrue);
    expect(
        "import 'package:win32/win32.dart' as win32 show COMObject, HRESULT hide DocumentProperties, SUCCEEDED;"
            .isImportLine,
        isTrue);
    expect("import 'package:path/path.dart' as path;".isImportLine, isTrue);
    expect(
        "import 'fileproperties/basicproperties.dart';".isImportLine, isTrue);
    expect('import "istoragefile.dart";'.isImportLine, isTrue);
    expect("import '';".isImportLine, isFalse);
    expect("import ''".isImportLine, isFalse);
    expect('not an import line'.isImportLine, isFalse);
    expect(''.isImportLine, isFalse);
  });

  test('lastComponent', () {
    expect('Windows.Globalization.Calendar'.lastComponent, equals('Calendar'));
    expect('Windows.Foundation.Collections.IMap`2'.lastComponent,
        equals('IMap`2'));
    expect('Windows.Foundation.Collections.IVector`1'.lastComponent,
        equals('IVector`1'));
    expect('StorageFile'.lastComponent, equals('StorageFile'));
  });

  test('nullable', () {
    expect('Calendar'.nullable(), equals('Calendar?'));
    expect('StorageFile?'.nullable(), equals('StorageFile?'));
    expect('IIterable<IKeyValuePair<String, String>>'.nullable(),
        equals('IIterable<IKeyValuePair<String, String>>?'));
  });

  test('outerType', () {
    expect(
        'IAsyncOperation<StorageFile?>'.outerType, equals('IAsyncOperation'));
    expect('IMap<String, Object?>'.outerType, equals('IMap'));
    expect('IMapView<String, IVectorView<TextSegment>?>'.outerType,
        equals('IMapView'));
    expect('Calendar'.outerType, equals('Calendar'));
  });

  test('quote', () {
    expect('foo'.quote(), equals("'foo'"));
    expect("'bar'".quote(), equals("''bar''"));
  });

  test('relativePathFrom', () {
    expect(
        'windows_foundation/lib/src/propertyvalue.dart'
            .relativePathFrom('windows_foundation/lib/src'),
        equals('propertyvalue.dart'));
    expect(
        'windows_foundation/lib/src/collections/imap.dart'
            .relativePathFrom('windows_foundation/lib/src'),
        equals('collections/imap.dart'));
    expect(
        'windows_foundation/lib/src/uri.dart'
            .relativePathFrom('windows_foundation/lib/src/collections'),
        equals('../uri.dart'));
    expect(
        'windows_storage/lib/src/storagefile.dart'.relativePathFrom('winrtgen'),
        equals('../windows_storage/lib/src/storagefile.dart'));
  });

  test('sortImports', () {
    expect(
        [
          "import 'fileproperties/basicproperties.dart';",
          "import 'dart:ffi';",
          "import 'package:ffi/ffi.dart';",
          "import 'dart:async';",
          "import 'package:win32/win32.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ].sortImports(),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          '',
          "import 'package:ffi/ffi.dart';",
          "import 'package:win32/win32.dart';",
          '',
          "import 'fileproperties/basicproperties.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ]));
  });

  test('stripGenerics', () {
    expect('IAsyncOperation`1<IVector`1<String>>'.stripGenerics(),
        equals('IAsyncOperation<IVector<String>>'));
    expect('TypedEventHandler`2'.stripGenerics(), equals('TypedEventHandler'));
    expect('LicenseChangedEventHandler'.stripGenerics(),
        equals('LicenseChangedEventHandler'));
  });

  test('stripLeadingUnderscores', () {
    expect('_leading'.stripLeadingUnderscores(), equals('leading'));
    expect('__valueSize'.stripLeadingUnderscores(), equals('valueSize'));
    expect('noUnderscore'.stripLeadingUnderscores(), equals('noUnderscore'));
  });

  test('stripQuestionMarkSuffix', () {
    expect('IJsonValue?'.stripQuestionMarkSuffix(), equals('IJsonValue'));
    expect('IJsonValue'.stripQuestionMarkSuffix(), equals('IJsonValue'));
  });

  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect('TRY'.toCamelCase(), equals('try'));
    expect('USD'.toCamelCase(), equals('usd'));
    expect('IPAddress'.toCamelCase(), equals('ipAddress'));
    expect('UInt32'.toCamelCase(), equals('uint32'));
    expect('X'.toCamelCase(), equals('x'));
    expect(''.toCamelCase(), isEmpty);
  });

  test('toDocComment', () {
    expect(''.toDocComment(wrapLength: 4), isEmpty);
    expect('This is a short string'.toDocComment(wrapLength: 8), equals('''
/// This
/// is a
/// short
/// string'''));
    expect('This is a short string'.toDocComment(wrapLength: 12), equals('''
/// This is
/// a short
/// string'''));
    expect('This is a short string'.toDocComment(wrapLength: 20), equals('''
/// This is a short
/// string'''));
    expect('This is a short string'.toDocComment(wrapLength: 200),
        equals('/// This is a short string'));
    expect(
        'This is a long text that needs to be formatted into a doc comment. '
                'It will be broken down into multiple lines, each not '
                'exceeding the wrapLength of 78 characters.'
            .toDocComment(wrapLength: 78),
        equals('''
/// This is a long text that needs to be formatted into a doc comment. It will
/// be broken down into multiple lines, each not exceeding the wrapLength of
/// 78 characters.'''));
    expect(
        'This is a long text that needs to be formatted into a doc comment. '
                'It will be broken down into multiple lines, each not '
                'exceeding the default wrapLength of 80 characters.'
            .toDocComment(),
        equals('''
/// This is a long text that needs to be formatted into a doc comment. It will
/// be broken down into multiple lines, each not exceeding the default
/// wrapLength of 80 characters.'''));
    expect(
        'This is the first paragraph. \n This is the second paragraph.'
            .toDocComment(),
        equals('''
/// This is the first paragraph.
///
/// This is the second paragraph.'''));
  });

  test('toFileName', () {
    expect(
        'Windows.Globalization.Calendar'.toFileName(), equals('calendar.dart'));
    expect('Windows.Foundation.Collections.IMapView`2'.toFileName(),
        equals('imapview.dart'));
    expect(
        'Windows.Globalization.Calendar'.toFileName(), equals('calendar.dart'));
    expect('StorageFile'.toFileName(), equals('storagefile.dart'));
  });

  test('toFilePath', () {
    expect('Windows.Globalization.Calendar'.toFilePath(),
        equals('windows_globalization/lib/src/calendar.dart'));
    expect('Windows.Storage.Pickers.FileOpenPicker'.toFilePath(),
        equals('windows_storage/lib/src/pickers/fileopenpicker.dart'));
    expect('Windows.Devices.Geolocation.Geofencing.Geofence'.toFilePath(),
        equals('windows_devices/lib/src/geolocation/geofencing/geofence.dart'));
  });

  test('toFolderPath', () {
    expect('Windows.Globalization.Calendar'.toFolderPath(),
        equals('windows_globalization/lib/src'));
    expect('Windows.Storage.Pickers.FileOpenPicker'.toFolderPath(),
        equals('windows_storage/lib/src/pickers'));
    expect('Windows.Devices.Geolocation.Geofencing.Geofence'.toFolderPath(),
        equals('windows_devices/lib/src/geolocation/geofencing'));
  });

  group('toIID', () {
    test('of IAsyncOperation<IReference<Duration>>', () {
      expect(
          'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'
              .toIID(),
          equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
    });

    test('of IMap<Guid, Object>', () {
      expect(
          'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'
              .toIID(),
          equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));
    });

    test('of IIterable<IKeyValuePair<Guid, Object>>', () {
      expect(
          'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'
              .toIID(),
          equals('{f3b20528-e3b3-5331-b2d0-0c2623aee785}'));
    });

    test('of IIterable<IKeyValuePair<String, IJsonValue>>', () {
      expect(
          'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'
              .toIID(),
          equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
    });

    test('of IIterable<String>', () {
      expect(
          'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};string)'.toIID(),
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('of IMap<String, String>', () {
      expect(
          'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'
              .toIID(),
          equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    });

    test('of IMapView<PedometerStepKind, PedometerReading>', () {
      expect(
          'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'
              .toIID(),
          equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
    });

    test('of IVector<IJsonValue>', () {
      expect(
          'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e})'
              .toIID(),
          equals('{d44662bc-dce3-59a8-9272-4b210f33908b}'));
    });

    test('of IVector<String>', () {
      expect(
          'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};string)'.toIID(),
          equals('{98b9acc1-4b56-532e-ac73-03d5291cca90}'));
    });
  });

  test('toPackageName', () {
    expect('Windows.Globalization.Calendar'.toPackageName(),
        equals('windows_globalization'));
    expect('Windows.Storage.Pickers.FileOpenPicker'.toPackageName(),
        equals('windows_storage'));
    expect('Windows.Devices.Geolocation.Geofencing.Geofence'.toPackageName(),
        equals('windows_devices'));
  });

  test('toSafeIdentifier', () {
    expect('null'.toSafeIdentifier(), equals('null_'));
    expect('double'.toSafeIdentifier(), equals('double_'));
    expect('__valueSize'.toSafeIdentifier(), equals('valueSize'));
  });

  test('typeArguments', () {
    expect(
        'IAsyncOperation<StorageFile?>'.typeArguments, equals('StorageFile?'));
    expect('IMap<String, Object?>'.typeArguments, equals('String, Object?'));
    expect('IMapView<String, IVectorView<TextSegment>?>'.typeArguments,
        equals('String, IVectorView<TextSegment>?'));
    expect('Calendar'.typeArguments, equals('Calendar'));
  });
}