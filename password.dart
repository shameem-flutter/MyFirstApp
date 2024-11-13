import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String symbols = '~!@#\$%^&*()_-=+[]{}';

  String getRandomChars(String chars) {
    final random = Random();
    return chars[random.nextInt(chars.length)];
  }

  List<String> wordlist = [
    'apple',
    'banana',
    'orange',
    'fig',
    'dates',
    'watermelon'
  ];
  String? GenerateWeakPassword() {
    final random = Random();
    String word1 = wordlist[random.nextInt(wordlist.length)];
    String word2 = wordlist[random.nextInt(wordlist.length)];
    return '$word1$word2';
  }

  String? GenerateMediumPassword(int length) {
    final random = Random();
    String chars = lowercase + uppercase + numbers;
    return List.generate(length, (_) => getRandomChars(chars)).join();
  }

  String? GenerateStrongPassword(int length) {
    final random = Random();
    String chars = lowercase + uppercase + numbers + symbols;
    return List.generate(length, (_) => getRandomChars(chars)).join();
  }

  print('how strong a password do you want "weak","medium" or "strong"? ');
  String? passwordstrength = stdin.readLineSync()?.toLowerCase();
  String password;
  if (passwordstrength == "weak") {
    password = GenerateWeakPassword()!;
  } else if (passwordstrength == "medium") {
    password = GenerateMediumPassword(12)!;
  } else {
    password = GenerateStrongPassword(16)!;
  }
  print('your password is:$password');
}
