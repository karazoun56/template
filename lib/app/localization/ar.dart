import 'package:template/app/localization/string_keys.dart';

class ArSa {
  static final ArSa singleton = ArSa._internal();
  ArSa._internal();

  Map<String, String> ar = {
    StringKeys().pleaseEnterValidEmail: 'من فضلك أدخل بريد إلكتروني صحيح',
    StringKeys().requiredField: 'حقل مطلوب',
    StringKeys().passwordMustBeAtLeast6Characters:
        'كلمة المرور يجب أن تكون على الأقل 6 أحرف',
    StringKeys().pleaseEnterValidId: 'من فضلك أدخل رقم هوية صحيح',
    StringKeys().pleaseEnterValidName: 'من فضلك أدخل اسم صحيح',
    StringKeys().pleaseEnterValidDateOfBirth: 'من فضلك أدخل تاريخ ميلاد صحيح',
    StringKeys().pleaseEnterValidMobile: 'من فضلك أدخل رقم هاتف صحيح',
    StringKeys().pleaseEnterValidEmailOrMobile:
        'من فضلك أدخل بريد إلكتروني أو رقم هاتف صحيح',
    StringKeys().pleaseEnterValidLink: 'من فضلك أدخل رابط صحيح',
  };
}
