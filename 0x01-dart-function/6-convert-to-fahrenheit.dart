List<double> convertToF(List<double> temperaturesInC) {
    List<double> fahre = temperaturesInC.map((degree) {
    return double.parse((degree * 9 / 5 + 32).toStringAsFixed(2));
  }).toList();
    return fahre;
}