void main(List<String> arg) {
  int number = int.parse(arg[0]);
  if(number > 0) {
    print('is positive');
  } else if (number < 0) {
    print('is negative');
  } else {
    print('is zero');
  }
}