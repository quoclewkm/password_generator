import 'package:password_generator_quoclewkm/password_generator_quoclewkm.dart';

void main() {
  // Generate a password with default settings
  String password1 = PasswordGenerator.generate();
  print('Default password: $password1');

  // Generate a password with a specific length
  String password2 = PasswordGenerator.generate(length: 12);
  print('12 character password: $password2');

  // Generate a password without numbers
  String password3 = PasswordGenerator.generate(includeNumbers: false);
  print('Password without numbers: $password3');

  // Generate a password without lowercase letters
  String password4 = PasswordGenerator.generate(includeLowercase: false);
  print('Password without lowercase letters: $password4');

  // Generate a password without uppercase letters
  String password5 = PasswordGenerator.generate(includeUppercase: false);
  print('Password without uppercase letters: $password5');

  // Generate a password with special characters
  String password6 = PasswordGenerator.generate(includeSpecialCharacters: true);
  print('Password with special characters: $password6');

  // Generate a password excluding similar characters
  String password7 = PasswordGenerator.generate(excludeSimilarCharacters: true);
  print('Password excluding similar characters: $password7');

  // Generate a password with custom settings
  String password8 = PasswordGenerator.generate(
    length: 16,
    includeNumbers: true,
    includeLowercase: true,
    includeUppercase: true,
    includeSpecialCharacters: true,
    excludeSimilarCharacters: true,
  );
  print('Custom password: $password8');
}
