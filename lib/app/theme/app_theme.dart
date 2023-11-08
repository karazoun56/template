import 'package:flutter/material.dart';
import 'package:template/app/extensions/num.dart';
import 'package:template/app/theme/text_manager.dart';

import '../config/size_manager.dart';
import 'color_manager.dart';

class AppTheme {
  factory AppTheme() => _instance;

  AppTheme._();

  static final AppTheme _instance = AppTheme._();

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      //TODO change colors and sizes as the project needs
      useMaterial3: true,
      inputDecorationTheme: inputDecorationTheme,
      dividerColor: ColorManager().dividerColor,
      scaffoldBackgroundColor: ColorManager().scaffoldBackgroundColor,
      textTheme: textAppTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager().scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorManager().black,
        ),
        centerTitle: true,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(ColorManager().secondaryColor),
        checkColor: MaterialStateProperty.all(ColorManager().onPrimaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: 6.radius,
        ),
      ),
      hintColor: ColorManager().hintColor,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager().primaryColor,
        selectionColor: ColorManager().secondaryColor,
        selectionHandleColor: ColorManager().primaryColor,
      ),
      primaryColor: ColorManager().primaryColor,
      colorScheme: ColorScheme.light(
        inversePrimary: ColorManager().primaryDark,
        background: ColorManager().backgroundColor,
        onBackground: ColorManager().onBackgroundColor,
        primary: ColorManager().primaryColor,
        onPrimary: ColorManager().onPrimaryColor,
        onSecondary: ColorManager().onSecondaryColor,
        secondary: ColorManager().secondaryColor,
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: 8.radius,
        ),
        selectedColor: ColorManager().primaryColor,
        selectedTileColor: ColorManager().primaryColor,
      ),
      dividerTheme: DividerThemeData(
        color: ColorManager().dividerColor,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager().primaryColor,
          foregroundColor: ColorManager().onPrimaryColor,
          padding: 16.paddingH,
          shape: RoundedRectangleBorder(
            borderRadius: 16.radius,
          ),
        ),
      ),
      unselectedWidgetColor: ColorManager().unselectedWidgetColor,
    );
  }
}

//TODO change colors and sizes as the project needs
InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      hintStyle: headline6.copyWith(
        fontWeight: FontWeight.w500,
        color: ColorManager().unselectedWidgetColor,
        fontSize: SizeManager().f11,
      ),
      contentPadding: 16.padding,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: 16.radius,
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: 16.radius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: 16.radius,
        borderSide: BorderSide(
          color: ColorManager().primaryColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: 16.radius,
        borderSide: BorderSide(
          color: ColorManager().errorColor,
        ),
      ),
      fillColor: ColorManager().hintColor,
      errorStyle: headline6.copyWith(
        color: ColorManager().errorColor,
        fontSize: SizeManager().f12,
        fontWeight: FontWeight.w400,
      ),
    );

BoxDecoration get continuerDecoration => BoxDecoration(
      color: ColorManager().backgroundColor,
      borderRadius: BorderRadius.circular(8),
      boxShadow: boxShadow,
    );

BoxDecoration get bottomSheetContinuerDecoration => BoxDecoration(
      color: ColorManager().backgroundColor,
      borderRadius: 20.radius,
      border: Border.all(
        color: ColorManager().dividerColor,
      ),
    );

List<BoxShadow> get boxShadow => [
      BoxShadow(
          color: ColorManager().unselectedWidgetColor.withOpacity(0.3),
          offset: const Offset(0, 4),
          spreadRadius: 1,
          blurRadius: 8),
    ];
