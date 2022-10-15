import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_fonts.dart';

class DefaultThemeData {
  final String defaultFontFamily;
  final Color primaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color inputTextColor;
  final Color whiteColor;
  final Color darkColor;
  final Color backgroundColor;
  final Color errorColor;
  final Color successColor;
  final Color hotAndSaleColor;
  final Brightness brightness;

  DefaultThemeData.light()
      : defaultFontFamily = DefaultFont.englishFont,
        primaryColor = DefaultLightColor.primaryColor,
        primaryTextColor = DefaultLightColor.primaryTextColor,
        secondaryTextColor = DefaultLightColor.secondaryTextColor,
        inputTextColor = DefaultLightColor.inputTextColor,
        whiteColor = DefaultLightColor.whiteColor,
        darkColor = DefaultLightColor.darkColor,
        backgroundColor = DefaultLightColor.backgroundColor,
        errorColor = DefaultLightColor.errorColor,
        successColor = DefaultLightColor.successColor,
        hotAndSaleColor = DefaultLightColor.hotAndSaleColor,
        brightness = Brightness.light;

  DefaultThemeData.dark()
      : defaultFontFamily = DefaultFont.englishFont,
        primaryColor = DefaultDarkColor.primaryColor,
        primaryTextColor = DefaultDarkColor.primaryTextColor,
        secondaryTextColor = DefaultDarkColor.secondaryTextColor,
        inputTextColor = DefaultDarkColor.inputTextColor,
        whiteColor = DefaultDarkColor.whiteColor,
        darkColor = DefaultDarkColor.darkColor,
        backgroundColor = DefaultDarkColor.backgroundColor,
        errorColor = DefaultDarkColor.errorColor,
        successColor = DefaultDarkColor.successColor,
        hotAndSaleColor = DefaultDarkColor.hotAndSaleColor,
        brightness = Brightness.dark;

  ThemeData get getTheme {
    return ThemeData(
      backgroundColor: backgroundColor,
      brightness: brightness,
      fontFamily: defaultFontFamily,
      errorColor: errorColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          color: primaryTextColor,
        ),
        headline2: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
        ),
        headline3: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
        ),
        headline4: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
        ),
        bodyText1: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: primaryTextColor,
        ),
        bodyText2: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: primaryTextColor,
        ),
        caption: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 11.0,
          fontWeight: FontWeight.w400,
          color: secondaryTextColor,
        ),
        subtitle1: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        subtitle2: TextStyle(
          fontFamily: defaultFontFamily,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: secondaryTextColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(DefaultLightColor.primaryColor),
          foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontFamily: defaultFontFamily,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: whiteColor,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(DefaultDimensions.defaultTextFieldBorder),
            borderSide: BorderSide.none),
        fillColor: whiteColor,
        filled: true,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontFamily: defaultFontFamily,
              fontSize: 11.0,
              fontWeight: FontWeight.w400,
              color: primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
