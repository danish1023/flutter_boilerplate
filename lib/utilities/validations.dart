class Validations {
  String validateName(String value) {
    final RegExp regex = new RegExp(r'^[A-za-z ]+$');
    if (value.isEmpty) {
      return 'Name is required';
    }
    if (!regex.hasMatch(value)) {
      return 'Only alphabetical characters allowed';
    }
    return null;
  }

  String validateEmail(String value) {
    final RegExp regex = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (value.isEmpty) {
      return 'Email is required';
    }
    if (!regex.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }
}
