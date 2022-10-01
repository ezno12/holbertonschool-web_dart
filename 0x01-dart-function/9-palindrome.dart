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