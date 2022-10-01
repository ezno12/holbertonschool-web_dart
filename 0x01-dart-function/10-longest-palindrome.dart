bool isPalindrome(String s) {
    int l = 0;
    int h = s.length - 1;

    if ( h < 3) {
        return false;
    }

    while(h > l){
        if (s[l++] != s[h--]) {
            return false;
        }

    }
    return true;
}

String longestPalindrome(String s) {
  if (s.length < 3) return 'none';
  String longSubString = '';
  String currSubString = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      currSubString = s.substring(i, j + 1);
      if (isPalindrome(currSubString) && currSubString.length > longSubString.length) {
        longSubString = currSubString;
      }
    }
  }
  return longSubString != '' ? longSubString : 'none';
}