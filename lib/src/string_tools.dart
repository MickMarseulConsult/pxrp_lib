extension StringTools on String {
  bool get isValidURL => Uri.tryParse(this) != null;

  bool IsValidPass(String myPass) {
    //final RegExp regExpNumber = new RegExp(r"^[0-9]{5}$");
    final RegExp regExpPass = new RegExp(
        r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{9}$");

    return regExpPass.hasMatch(myPass);
  }

  bool IsValidNumber(String myNumber) {
    final RegExp regExpNumber = new RegExp(r"^[0-9]{5}$");
    return regExpNumber.hasMatch(myNumber);
  }
}
