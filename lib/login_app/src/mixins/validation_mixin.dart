mixin ValidationMixin {
  String? validateEmail(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    if (!value.contains("@")) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
