import 'package:template/app/localization/string_keys.dart';

class EnUs {
  static final EnUs singleton = EnUs._internal();
  EnUs._internal();

  Map<String, String> en = {
    StringKeys().pleaseEnterValidEmail: 'Please Enter Valid Email',
    StringKeys().requiredField: 'Required Field',
    StringKeys().passwordMustBeAtLeast6Characters:
        'Password Must Be At Least 6 Characters',
    StringKeys().pleaseEnterValidId: 'Please Enter Valid Id',
    StringKeys().pleaseEnterValidName: 'Please Enter Valid Name',
    StringKeys().pleaseEnterValidDateOfBirth:
        'Please Enter Valid Date Of Birth',
    StringKeys().pleaseEnterValidMobile: 'Please Enter Valid Mobile',
    StringKeys().pleaseEnterValidEmailOrMobile:
        'Please Enter Valid Email Or Mobile',
    StringKeys().pleaseEnterValidLink: 'Please Enter Valid Link',
  };
}
