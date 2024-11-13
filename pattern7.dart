void main() {
  for (int i = 4; i >= 0; i--) {
    String a = "";
    for (int k = 0; k < (4 - i); k++) {
      a = a + "  ";
    }
    for (int j = 0; j <= (2 * i); j++) {
      a = a + "* ";
    }
    print(a);
  }
  for (int i = 1; i <= 4; i++) {
    String a = "";
    for (int k = 0; k < (4 - i); k++) {
      a = a + "  ";
    }
    for (int j = 0; j <= (2 * i); j++) {
      a = a + "* ";
    }
    print(a);
  }
}
