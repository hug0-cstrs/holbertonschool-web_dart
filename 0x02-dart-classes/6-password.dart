class Password {
  // make the property password private
  String _password = "";

  // Constructor
  Password({String password = ""}) {
    _password = password;
  }

  // getter
  String get password => _password;

  // setter
  set password(String password) {
    _password = password;
  }

  // Method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    if (!_password.contains(RegExp(r'[A-Z]'))) return false;
    if (!_password.contains(RegExp(r'[a-z]'))) return false;
    if (!_password.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  // Method to return the password
  String toString() {
    return "Your Password is: $_password";
  }
}