void main() {
  for (int i = 0; i < 5; i++) {
    String a = "";
    for (int k = 0; k < (5 - i) - 1; k++) {
      a = a + "  ";
    }
    for (int j = 0; j < (2 * i) + 1; j++) {
      if (i % 2 != 0) {
        a = a + ("#  ");
      } else {
        a = a + ("*  ");
      }
    }
    print(a);
  }
}
