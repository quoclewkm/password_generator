import 'dart:math';

class PasswordGenerator {
  static const String _lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
  static const String _uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const String _numbers = '0123456789';
  static const String _specialCharacters = '[!@#\$%^&*(),.?":{}|<>]';

  static String generate({
    int length = 8,
    bool includeNumbers = true,
    bool includeLowercase = true,
    bool includeUppercase = true,
    bool includeSpecialCharacters = false,
    bool excludeSimilarCharacters = false,
  }) {
    final random = Random.secure();
    String chars = '';

    if (includeLowercase) chars += _lowercaseLetters;
    if (includeUppercase) chars += _uppercaseLetters;
    if (includeNumbers) chars += _numbers;
    if (includeSpecialCharacters) chars += _specialCharacters;

    if (excludeSimilarCharacters) {
      chars = chars.replaceAll(RegExp(r'[iloILO01]'), '');
    }

    return List.generate(length, (_) => chars[random.nextInt(chars.length)]).join();
  }
}
