import 'package:get/get.dart';

import '../localization/string_keys.dart';

class Validator {
  static Validator instance = Validator._internal();

  Validator._internal();

  // validator for email
  String? emailValidator(String? value) {
    if (emptyValidator(value) != null) {
      return emptyValidator(value);
    } else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
        .hasMatch(value!)) {
      return StringKeys().pleaseEnterValidEmail.tr;
    }
    return null;
  }

// empty validator
  String? emptyValidator(String? value) {
    value == null ? value = '' : value = value;
    if (value.isEmpty) {
      return StringKeys().requiredField.tr;
    }
    return null;
  }

  // validator for password
  String? passwordValidator(String? value) {
    if (emptyValidator(value) != null) {
      return emptyValidator(value);
    } else if (value!.length < 6) {
      return StringKeys().passwordMustBeAtLeast6Characters.tr;
    }
    return null;
  }

  // id Id validator must more than 9 digits
  String? idValidator(String? value) {
    if (emptyValidator(value) != null) {
      return emptyValidator(value);
    } else if (value!.length != 10) {
      return StringKeys().pleaseEnterValidId.tr;
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return StringKeys().pleaseEnterValidId.tr;
    }
    return null;
  }

  String? validateDateBirth(String? text) {
    if (emptyValidator(text) != null) {
      return emptyValidator(text);
    } else if (DateTime.parse(text!).isAfter(DateTime.now())) {
      return StringKeys().pleaseEnterValidDateOfBirth.tr;
    }
    return null;
  }

  String? validateName(String? text) {
    if (emptyValidator(text) != null) {
      return emptyValidator(text);
    } else if (text!.length < 2) {
      return StringKeys().pleaseEnterValidName.tr;
    }
    return null;
  }

  String? validateEmail(String? text) {
    if (emptyValidator(text) != null) {
      return emptyValidator(text);
    } else if (!GetUtils.isEmail(text ?? '')) {
      return StringKeys().pleaseEnterValidEmail.tr;
    }
    return null;
  }

  String? validateMobile(String? text) {
    if (emptyValidator(text) != null) {
      return emptyValidator(text);
    } else if (!GetUtils.isPhoneNumber(text ?? '')) {
      return StringKeys().pleaseEnterValidMobile.tr;
    }
    return null;
  }

  String? fileValidator(String? p0) {
    if (emptyValidator(p0) != null) {
      return emptyValidator(p0);
    }
    return null;
  }

  bool isValidatePassword({required String password}) {
    const pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(password);
  }

  String? phoneValidator(String? value) {
    if (emptyValidator(value) != null) {
      return emptyValidator(value);
    } else if (!GetUtils.isPhoneNumber(value ?? '')) {
      return StringKeys().pleaseEnterValidMobile.tr;
    }
    return null;
  }

  String? nameValidator(String? value) {
    if (emptyValidator(value) != null) {
      return emptyValidator(value);
    } else if (value!.length < 2) {
      return StringKeys().pleaseEnterValidName.tr;
    }
    return null;
  }

  String? emailOrMobileValidator(String? p1) {
    if (emptyValidator(p1) != null) {
      return emptyValidator(p1);
    } else if (!GetUtils.isEmail(p1 ?? '') &&
        !GetUtils.isPhoneNumber(p1 ?? '')) {
      return StringKeys().pleaseEnterValidEmailOrMobile.tr;
    }
    return null;
  }

  String? youtubeLink(String? p1) {
    if (emptyValidator(p1) != null) {
      return null;
    } else if (!GetUtils.isURL(p1 ?? '') &&
        (!(p1 ?? '').contains('youtube.com'))) {
      return StringKeys().pleaseEnterValidLink.tr;
    }
    return null;
  }
}
