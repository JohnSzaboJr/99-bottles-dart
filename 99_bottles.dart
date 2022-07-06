String pluralize(int i) {
  return i == 1 ? '' : 's';
}

String zeroify(int i) {
  return i == 0 ? 'no more' : i.toString();
}

void main() {
  for (var i = 99; i >= 0; i--) {
    var line1 =
        '${zeroify(i)} bottle${pluralize(i)} of beer on the wall, ${zeroify(i)} bottle${pluralize(i)} of beer.';
    line1 = line1[0].toUpperCase() + line1.substring(1);
    print(line1);
    var line2 =
        'Take one down and pass it around, ${zeroify(i - 1)} bottle${pluralize(i - 1)} of beer on the wall.';
    if (i == 0) {
      line2 =
          'Go to the store and buy some more, 99 bottles of beer on the wall.';
    }
    print(line2);
  }
}
