void main(List<String> arg) {
  int number = int.parse(arg[0]);
  if(number > 0) {
    print('${number} is positive');
  } else if (number < 0) {
    print('${number} is negative');
  } else {
    print('${number} is zero');
  }
}