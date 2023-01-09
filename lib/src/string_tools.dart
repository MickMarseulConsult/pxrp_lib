extension StringTools on String {
  bool get isValidURL => Uri.tryParse(this) != null;
}
