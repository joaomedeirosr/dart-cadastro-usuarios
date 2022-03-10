main() {
  for (int x = 0; x < 10; x++) {
    print('Rodou $x');
  }
  bool condition = true;

  int i = 0;
  while (condition) {
    print("Rodou $i");
    if (i <= 5) {
      condition = false;
    }
    i++;
  }
}
