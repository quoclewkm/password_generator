import 'package:test/test.dart';
import 'package:password_generator_quoclewkm/password_generator_quoclewkm.dart';

void main() {
  group('PasswordGenerator', () {
    test('generates password with default settings', () {
      final password = PasswordGenerator.generate();
      expect(password.length, equals(8));
    });

    test('generates password of specified length', () {
      final length = 12;
      final password = PasswordGenerator.generate(length: length);
      expect(password.length, equals(length));
    });

    test('generates password without numbers', () {
      final password = PasswordGenerator.generate(includeNumbers: false);
      expect(password.contains(RegExp(r'[0-9]')), isFalse);
    });

    test('generates password without lowercase letters', () {
      final password = PasswordGenerator.generate(includeLowercase: false);
      expect(password.contains(RegExp(r'[a-z]')), isFalse);
    });

    test('generates password without uppercase letters', () {
      final password = PasswordGenerator.generate(includeUppercase: false);
      expect(password.contains(RegExp(r'[A-Z]')), isFalse);
    });

    test('generates password with special characters', () {
      final password =
          PasswordGenerator.generate(includeSpecialCharacters: true);
      expect(password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]')), isTrue);
    });

    test('generates password excluding similar characters', () {
      final password =
          PasswordGenerator.generate(excludeSimilarCharacters: true);
      expect(password.contains(RegExp(r'[iloILO01]')), isFalse);
    });
  });

  // group fuzz testing
  group('Fuzz testing', () {
    test('generates password with default settings', () {
      for (var i = 0; i < 1000; i++) {
        final password = PasswordGenerator.generate();
        expect(password.length, equals(8));
      }
    });

    test('generates password of specified length', () {
      for (var i = 0; i < 1000; i++) {
        final length = 12;
        final password = PasswordGenerator.generate(length: length);
        expect(password.length, equals(length));
      }
    });

    test('generates password without numbers', () {
      for (var i = 0; i < 1000; i++) {
        final password = PasswordGenerator.generate(includeNumbers: false);
        expect(password.contains(RegExp(r'[0-9]')), isFalse);
      }
    });

    test('generates password without lowercase letters', () {
      for (var i = 0; i < 1000; i++) {
        final password = PasswordGenerator.generate(includeLowercase: false);
        expect(password.contains(RegExp(r'[a-z]')), isFalse);
      }
    });

    test('generates password without uppercase letters', () {
      for (var i = 0; i < 1000; i++) {
        final password = PasswordGenerator.generate(includeUppercase: false);
        expect(password.contains(RegExp(r'[A-Z]')), isFalse);
      }
    });

    test('generates password with special characters', () {
      for (var i = 0; i < 1000; i++) {
        final password =
            PasswordGenerator.generate(includeSpecialCharacters: true);
        expect(password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]')), isTrue);
      }
    });

    test('generates password excluding similar characters', () {
      for (var i = 0; i < 1000; i++) {
        final password =
            PasswordGenerator.generate(excludeSimilarCharacters: true);
        expect(password.contains(RegExp(r'[iloILO01]')), isFalse);
      }
    });
  });
}
