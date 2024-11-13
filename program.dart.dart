// to check odd or even number

import 'dart:io';

void main() {
  print('enter a number');
  int? a = int.parse(stdin.readLineSync()!);
  if (a % 2 == 0) {
    print('$a is even number ');
  } else {
    print('$a odd number');
  }
}
