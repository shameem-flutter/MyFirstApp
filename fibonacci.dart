import 'dart:io';

void main() {
  print('how many fibonacci numbers do you want ');
  int? n = int.tryParse(stdin.readLineSync()!);
  if (n != null && n > 0) {
    List<int> fibonacciSequence = [1, 1];
    for (var i = 2; i < n; i++) {
      fibonacciSequence
          .add(fibonacciSequence[i - 1] + fibonacciSequence[i - 2]);
    }
    print(fibonacciSequence.sublist(0, n));
  } else {
    print('please enter valid positive number');
  }
}
