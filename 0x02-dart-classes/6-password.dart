class Password {
    var _password= '';

    Password({required String password}) : _password = password;
    
    String get password {
        return _password;
    }   

    set password(var password) {
    _password = password;
  }

    
    bool isValid() {
        if (this.password.length >= 8
             && this.password.length <= 16
             && this.password.contains(RegExp(r'[a-z]'))
             && this.password.contains(RegExp(r'[A-Z]'))
             && this.password.contains(RegExp(r'[0-9]'))
             ) { return true; }
        return false;
    }

    @override
    String toString() {
        return "Your Password is: ${this.password}";
    } 
}
