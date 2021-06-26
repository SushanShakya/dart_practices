class Raindrops {
  String convert(int val) {
    var result = '';

    if (val % 3 == 0) result + 'Pling';
    if (val % 5 == 0) result + 'Plang';
    if (val % 7 == 0) result + 'Plong';
    if (result.isEmpty) result = val.toString();

    return result;
  }
}
