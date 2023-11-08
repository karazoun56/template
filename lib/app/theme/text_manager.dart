library text_manager;

import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../config/size_manager.dart';
import 'color_manager.dart';

TextTheme textAppTheme = TextTheme(
  displayLarge: displayLarge,
  displayMedium: displayMedium,
  displaySmall: displaySmall,
  bodySmall: bodySmall,
  bodyMedium: bodyMedium,
  bodyLarge: bodyLarge,
  headlineMedium: headline3,
  headlineSmall: headline4,
  titleLarge: headline5,
  titleMedium: headline6,
  labelLarge: headline3,
  labelMedium: headline4,
  labelSmall: headline6,
  titleSmall: headline6,
);

//TODO change font sizes as the project needs
TextStyle get inputTheme => TextStyle(
      fontWeight: FontWeight.w300,
      fontFamily: fontFamily,
      color: ColorManager().onBackgroundColor,
    );

TextStyle get headline3 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: SizeManager().f24);

TextStyle get headline4 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: SizeManager().f20);

TextStyle get headline5 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f16);

TextStyle get headline6 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get subtitle1 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f16);

TextStyle get subtitle2 => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get displayLarge => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f18);

TextStyle get displayMedium => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f16);

TextStyle get displaySmall => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get bodyLarge => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f16);

TextStyle get bodyMedium => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get bodySmall => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    fontSize: SizeManager().f12);

TextStyle get captionLarge => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get captionMedium => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f12);

TextStyle get captionSmall => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f10);

TextStyle get buttonLarge => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f16);

TextStyle get buttonMedium => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f14);

TextStyle get buttonSmall => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f12);

TextStyle get overline => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontSize: SizeManager().f10);

TextStyle get overlineBold => TextStyle(
    color: ColorManager().onBackgroundColor,
    overflow: TextOverflow.ellipsis,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: SizeManager().f10);
