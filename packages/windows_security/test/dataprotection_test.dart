import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_security/windows_security.dart';

void main() {
  // group('UserDataProtection', () {
  //   test('can be created', () {
  //     final userDataProtection = UserDataProtectionManager.tryGetDefault();
  //     expect(userDataProtection, isNotNull);
  //   });

  //   test('can protect and unprotect data', () async {
  //     final userDataProtection = UserDataProtectionManager.tryGetDefault()!;
  //     const data = 'Hello, world!';
  //     final buffer = CryptographicBuffer.convertStringToBinary(
  //       data,
  //       BinaryStringEncoding.utf8,
  //     );
  //     final protectedData = await userDataProtection.protectBufferAsync(
  //       buffer,
  //       UserDataAvailability.always,
  //     );
  //     expect(protectedData, isNot(data));
  //     final unprotectedData =
  //         userDataProtection.unprotectBufferAsync(protectedData);
  //     expect(unprotectedData, data);
  //   });
  // });

  group('PasswordVault', () {
    test('can save/load credentials', () {
      final passwordVault = PasswordVault();
      addTearDown(passwordVault.clear);
      final credential = PasswordCredential.createPasswordCredential(
          'resource', 'username', 'password');
      passwordVault.add(credential);

      final retrievedCredential =
          passwordVault.retrieve('resource', 'username');
      expect(retrievedCredential, isNotNull);
      expect(retrievedCredential!.password, 'password');
    });

    test('can save/load multiple credentials', () {
      final passwordVault = PasswordVault();
      addTearDown(passwordVault.clear);

      final credentials = {
        'username1': 'password1',
        'username2': 'password2',
      };

      credentials.forEach((username, password) {
        final credential = PasswordCredential.createPasswordCredential(
            'resource', username, password);
        passwordVault.add(credential);
      });

      final retrievedCredentials = passwordVault.retrieveAll();
      for (final retrievedCredential in List.of(retrievedCredentials)) {
        expect(retrievedCredential, isNotNull);
        retrievedCredential!.retrievePassword();

        final expectedCredential =
            credentials.remove(retrievedCredential.userName);
        expect(retrievedCredential.password, expectedCredential);
      }

      expect(credentials, isEmpty);
    });

    test('throws when retrieving non-existent credential', () {
      final passwordVault = PasswordVault();
      addTearDown(passwordVault.clear);
      expect(() => passwordVault.retrieve('resource', 'username'),
          throwsA(isA<WindowsException>()));
    });
  });
}

extension on PasswordVault {
  void clear() {
    final credentials = retrieveAll();
    for (final cred in credentials) {
      remove(cred);
    }
  }
}
