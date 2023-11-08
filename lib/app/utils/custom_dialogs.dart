class CustomDialogs {
  static final CustomDialogs singleton = CustomDialogs._internal();

  factory CustomDialogs() => singleton;
  CustomDialogs._internal();
}
