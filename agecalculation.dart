import 'dart:io';

void main() {
  print('enter your name');
  String name = stdin.readLineSync()!;
  print('enter your age');
  int age = int.parse(stdin.readLineSync()!);
  int yearstohundred = 100 - age;
  if (yearstohundred > 0) {
    print(' $name,you have $yearstohundred to 100 years to be old');
  } else {
    print("your age is 100 or greater");
  }
}
