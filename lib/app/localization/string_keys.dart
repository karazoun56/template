class StringKeys {
  static final StringKeys singleton = StringKeys._internal();

  factory StringKeys() => singleton;
  StringKeys._internal();

  String pleaseEnterValidEmail = 'Please Enter Valid Email';
  String requiredField = 'Required Field';
  String passwordMustBeAtLeast6Characters =
      'Password Must Be At Least 6 Characters';
  String pleaseEnterValidId = 'Please Enter Valid Id';
  String pleaseEnterValidName = 'Please Enter Valid Name';
  String pleaseEnterValidDateOfBirth = 'Please Enter Valid Date Of Birth';
  String pleaseEnterValidMobile = 'Please Enter Valid Mobile';
  String pleaseEnterValidEmailOrMobile = 'Please Enter Valid Email Or Mobile';
  String pleaseEnterValidLink = 'Please Enter Valid Link';
}
