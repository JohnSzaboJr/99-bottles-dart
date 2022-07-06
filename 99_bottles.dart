String getBottles(int i) {
  String n = i > 0 ? i.toString() : 'no more';
  String s = i == 1 ? '' : 's';
  return '$n bottle$s';
}

void main() {
  String beer = 'of beer on the wall';
  String l2var = 'Go to the store and buy some more, 99 bottles $beer.';
  for (int i = 99; i >= 0; i--) {
    String l1 = '${getBottles(i)} $beer, ${getBottles(i)} of beer.';
    String l2 = 'Take one down and pass it around, ${getBottles(i - 1)} $beer.';
    print('${l1[0].toUpperCase() + l1.substring(1)}\n${i > 0 ? l2 : l2var}');
  }
}
