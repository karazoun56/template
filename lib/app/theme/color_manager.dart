import 'dart:ui';

class ColorManager {
  static final ColorManager _instance = ColorManager._internal();

  factory ColorManager() => _instance;
  ColorManager._internal();

//TODO change colors as the project needs
  final Color transparentColor = const Color(0x00000000);
  final Color primaryColor = const Color(0xff21346A);
  final Color primaryDark = const Color(0xff1E293B);
  final Color secondaryColor = const Color(0xffC1976B);
  final Color containerColor = const Color(0xffE9DACB);
  final Color onSecondaryColor = const Color(0xff64748B);
  final Color onSecondaryDark = const Color(0xff6B7280);
  final Color backgroundColor = const Color(0xffffffff);
  final Color onBackgroundColor = const Color(0xff000000);
  final Color scaffoldBackgroundColor = const Color(0xFFFFFFFF);
  final Color dividerColor = const Color(0xffF1F5F9);
  final Color unselectedWidgetColor = const Color(0xff94A3B8);
  final Color shadowColor = const Color(0x33000000);
  final Color onPrimaryColor = const Color(0xffFFFFFF);
  final Color hintColor = const Color(0xffF8FAFC);
  final Color errorColor = const Color(0xffE53E3E);
  final Color successColor = const Color(0xff38A169);
  final Color black = const Color(0xff000000);
  final Color white = const Color(0xFFFFFFFF);
  final Color blueColor = const Color(0xff2972FF);
  final Color success = const Color(0xff38A169);
  final Color error = const Color(0xffE53E3E);
  final Color borderColor = const Color(0xff9C9C9C);
  final Color whatsAppColor = const Color(0xff31BA46);
  final Color iconContainerColor = const Color(0xff21346A).withOpacity(0.5);
  final Color yellowColor = const Color(0xffFBBF24);
  final Color switchTrackColor = const Color(0xffE2E8F0);
}
