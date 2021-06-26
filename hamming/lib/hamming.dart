class Hamming {
  int distance(String left, String right) {
    if (left.length != right.length) {
      if (left.isEmpty || right.isEmpty)
        throw ArgumentError('no strand must be empty');
      throw ArgumentError('left and right strands must be of equal length');
    }

    var distance = 0;

    for (int i = 0; i < left.length; i++) {
      if (left[i] != right[i]) distance++;
    }

    return distance;
  }
}
