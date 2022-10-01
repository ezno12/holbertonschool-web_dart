String longestUniqueSubstring(String str) {
  var longSubString = '';
  var currSubString = '';
  for (var i = 0; i < str.length; i++) {
    if (currSubString.contains(str[i])) {
      currSubString = currSubString.substring(currSubString.indexOf(str[i]) + 1);
    }
    currSubString += str[i];
    if (currSubString.length > longSubString.length) {
      longSubString = currSubString;
    }
  }
  return longSubString;
}