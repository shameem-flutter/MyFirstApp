// import 'dart:ffi';
import 'dart:io';
import 'dart:math';
//  guessing game
void main() {
  var random = Random();
  int randomNumber = random.nextInt(100) + 1;
  print("please choose a number between 1 and 100, or type 'exit' to quit");
  playGame(randomNumber, 0);
}

void playGame(int randomNumber, int attempts) {
  print(" guess the number");
  String? usernumber = stdin.readLineSync();

  if (usernumber == "exit") {
    print("bye");
    return;
  }
  attempts++;
  int guess = int.parse(usernumber!);

  if (guess < randomNumber) {
    print('you are lower');
    playGame(randomNumber, attempts);
  } else if (guess > randomNumber) {
    print('you are higher');
    playGame(randomNumber, attempts);
  } else {
    print("Bravo! you guesses it perfectly in $attempts attempt");
  }
}
