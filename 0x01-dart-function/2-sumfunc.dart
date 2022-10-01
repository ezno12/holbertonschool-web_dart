int add( int a, int b){
    return a + b;
}
int sub( int a, int b) {
    return a - b;
}
String showFunc(int a, int b){
    int res1 = add(a, b);
    int res2 = sub(a, b);
    return 'Add $a + $b = $res1\n Sub $a - $b = $res2';
}