# Password Generator

A Dart library for generating random passwords with various customizable options.

## Features

- Generate passwords with custom lengths
- Include or exclude numbers, lowercase letters, uppercase letters, and special characters
- Option to exclude similar characters (e.g., 'i', 'l', '1', 'o', 'O', '0')

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  password_generator_quoclewkm: ^1.0.0
```

## Usage

```dart
import 'package:password_generator_quoclewkm/password_generator.dart';

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
```

## API Reference

### `PasswordGenerator.generate`

Generates a random password with the specified options.

```dart
static String generate({
  int length = 8,
  bool includeNumbers = true,
  bool includeLowercase = true,
  bool includeUppercase = true,
  bool includeSpecialCharacters = false,
  bool excludeSimilarCharacters = false,
})
```

- `length`: The length of the password (default: `8`)
- `includeNumbers`: Whether to include numbers in the password (default: `true`)
- `includeLowercase`: Whether to include lowercase letters in the password (default: `true`)
- `includeUppercase`: Whether to include uppercase letters in the password (default: `true`)
- `includeSpecialCharacters`: Whether to include special characters in the password (default: `false`)
- `excludeSimilarCharacters`: Whether to exclude similar characters (e.g., 'i', 'l', '1', 'o', 'O', '0') (default: `false`)
- Returns: A randomly generated password

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.