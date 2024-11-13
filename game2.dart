import 'dart:io';

void main() {
  print('');
  print('');

  print('hello boss i am your laptop');
  print('think of a number between 0 and 100');
  print('i will try to guess and blow your mind');
  print('');
  print('if my guess is too low type "low"');
  print('if my guess is too high type"high"');
  print('if i guess your number correctly type "yes"');
  print('type "exit" to anytime quit');
  // int? number=int.parse(stdin.readLineSync()!);
  int low = 0;
  int high = 100;
  playGame(low, high, 1);
}

void playGame(int low, int high, int attempts) {
  if (low > high) {
    print('it seems there is mistake please try again');
    return;
  }
  int guess = (low + high) ~/ 2;
  print('is your number $guess ??');
  String? response = stdin.readLineSync()?.toLowerCase();
  if (response == "exit") {
    print('bye bye');
    return;
  }
  attempts++;

  if (response == "low") {
    playGame(guess + 1, high, attempts);
  } else if (response == "high") {
    playGame(low, guess - 1, attempts);
  } else if (response == "yes") {
    print("i got it in ${attempts - 1} attempts!");
  } else {
    print('please respond with "low","high","exit","yes"');
    playGame(low, high, attempts - 1);
  }
}
