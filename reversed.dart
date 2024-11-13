// the code for reversing a sentence 

import 'dart:io';

void main() {
  print('enter a sentence');
  String sentence = stdin.readLineSync()!;
  reverseWords(sentence);
}

void reverseWords(sentence) {
  List words = sentence.split(' ');
  words = words.reversed.toList();
  String reversedsentence = words.join(' ');
  print(reversedsentence);
}
