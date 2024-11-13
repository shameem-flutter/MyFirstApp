void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> common = [];
  for (int i in a) {
    if (i % 2 == 0) {
      common.add(i);
      print(i);
    }
  }
  print(common);
}
