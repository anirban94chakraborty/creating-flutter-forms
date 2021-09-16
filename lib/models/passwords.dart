class Passwords {
  String? password;
  String? confirmPassword;
  int? length;

  Passwords() {
    password = "";
    confirmPassword = "";
    length = 0;
  }

  bool nonEmpty() {
    return password != null &&
        password!.isNotEmpty &&
        confirmPassword != null &&
        confirmPassword!.isNotEmpty;
  }

  bool match() {
    return password == confirmPassword;
  }

  bool valid() {
    return password!.length >= 8;
  }
}
