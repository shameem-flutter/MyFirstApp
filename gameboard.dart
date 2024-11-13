import 'dart:io';

void main() {
  print('enter the size of the game board ');
  int? size = int.tryParse(stdin.readLineSync()!);
  if (size == null || size <= 0) {
    print("invalid input");
    return;
  }
  //draw the board
  for (int row = 0; row < size; row++) {
    //draw the horizontal line for the row
    print(' ---' * size);
    //draw the cells for the row
    print('|   ' * (size + 1));
    //draw the final bottom line
  }
  print(' ---' * size);
}
