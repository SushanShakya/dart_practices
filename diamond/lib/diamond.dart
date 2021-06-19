class Diamond {
  List<String> rows(String s) {
    int n = (s.toUpperCase().codeUnitAt(0)) - 65;
    int maxI = (2 * n) + 1;

    List<String> finalValue = [];

    for (int i = 0; i < maxI; i++) {
      List<String> current = [];
      int x = n - i;
      int startingSpace = (x < 0) ? -x : x;
      for (int sp = startingSpace; sp > 0; sp--) {
        current.add(" ");
      }
      int startLetter = (i > n) ? (2 * (n) - i) : i;
      current.add(String.fromCharCode(startLetter + 65));
      if ((i > 0) && (i < (maxI - 1))) {
        int normal = (2 * i) - 1;
        int termination = (i > n) ? ((2 * ((2 * n) - i)) - 1) : normal;
        for (int j = 0; j < termination; j++) {
          current.add(" ");
        }
        current.add(String.fromCharCode(startLetter + 65));
      }
      for (int sp = startingSpace; sp > 0; sp--) {
        current.add(" ");
      }
      finalValue.add(current.join());
    }

    return finalValue;
  }
}
