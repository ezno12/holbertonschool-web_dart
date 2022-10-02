class Password {
    var password= '';

    Password() {
        this.password = password;
    }
    
    bool isValid() {
        if (this.password.length <= 8
             && this.password.length >= 16 
             && !this.password.contains(RegExp(r'[a-z]'))
             && !this.password.contains(RegExp(r'[A-Z]'))
             && !this.password.contains(RegExp(r'[0-9'))
             ) { return false; }
        return true;
    }

    @override
    String toString() {
        return "Your Password is: ${this.password}";
    } 
}
