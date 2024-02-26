class AppValidator {
  AppValidator._();
  static const Pattern _emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String? emailValidator(String? email) {
    RegExp regex = RegExp(_emailPattern.toString());
    if (email!.trim().isEmpty) {
      return "This field is required";
    } else if (!regex.hasMatch(email)) {
      return "Enter a valid email";
    } else {
      return null;
    }
  }

  static String? passwordValidator(String? password) {
    if (password!.length < 6) {
      return "Password must be of 6 characters";
    }

    return null;
  }

  static String? isEmptyValidator(String? name) {
    name ??= "";
    if (name.trim().isEmpty) {
      return "This field is required";
    } else {
      return null;
    }
  }

  static String? isNumericValidator(String? name, String message) {
    final RegExp numericRegExp = RegExp(r"^\d+(\.\d+)?$");

    if (name!.trim().isEmpty) {
      return "This field is required";
    } else if (!numericRegExp.hasMatch(name)) {
      return "Please enter a valid $message";
    } else {
      return null;
    }
  }

  static String? isAlphabetic(String? name) {
    final RegExp alphabeticRegExp =
        RegExp(r"^(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%^&*()-_+=<>?/\[\]{},.]*$");

    if (name!.trim().isEmpty) {
      return "This field is required";
    } else if (!alphabeticRegExp.hasMatch(name)) {
      return "Please enter a valid username";
    } else {
      return null;
    }
  }

  static String? passwordMatchValidator(
    String? password,
    String? confirmPassword,
  ) {
    if (password != confirmPassword) {
      return "Passwords do not match";
    } else {
      return null;
    }
  }
}
