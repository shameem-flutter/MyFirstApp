import 'dart:io';

void main() {
  print('enter a word');
  String a = stdin.readLineSync()!;
  String reversed = "";
  for (int i = a.length - 1; i >= 0; i--) {
    reversed = reversed + a[i];
  }
  if (a.toLowerCase() == reversed.toLowerCase()) {
    print("$a is palindrome");
  } else {
    print('$a is not palindrome');
  }
}
