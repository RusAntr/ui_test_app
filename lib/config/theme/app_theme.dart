import 'package:flutter/material.dart';

/// App themes
class AppThemes {
  /// Colors used in the app
  static const primaryColor = Color(0xffBFFF07);
  static const onPrimaryColor = Color(0xff29364E);

  static const containerColor = Color(0xffF5F7FA);

  static const backgroundColor = Color(0xffFFFFFF);
  static const onBackgroundColor = Color(0xffF5F7FA);

  static const secondaryColor = Color(0xff8693A3);
  static const onSecondaryColor = Color(0xffD4D9E0);

  /// Colors related to errors
  static const errorColor = Color(0xffEB5757);
  static const onErrorColor = Color(0xff14142B);

  /// Colors related to text
  static const primaryTextColor = Color(0xff29364E);
  static const secondaryTextColor = Color(0xff8693A3);
  static const tertiaryTextColor = Color(0xffA9ABB7);
  static const buttonTextColor = Color(0xffFFFFFF);
  static const extraTextColor = Color(0xff2C3035);

  /// Default light theme
  static ThemeData defaultTheme = ThemeData(
    brightness: Brightness.light,
    splashColor: Colors.transparent, // <- Here
    highlightColor: Colors.transparent, // <- Here
    hoverColor: Colors.transparent,
    textTheme: textTheme,
    fontFamily: 'Roboto',

    /// Scheme of colors for this theme
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      secondary: secondaryColor,
      primaryContainer: containerColor,
      secondaryContainer: secondaryColor.withGreen(-31).withOpacity(0.2),
      onSecondary: onSecondaryColor,
      error: errorColor,
      onError: onErrorColor,
      background: backgroundColor,
      onBackground: onBackgroundColor,
      surface: backgroundColor,
      onSurface: onBackgroundColor,
    ),
  );

  /// App's text theme
  static const textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: primaryTextColor,
      letterSpacing: 0.1,
    ),
    displaySmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: primaryTextColor,
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: tertiaryTextColor,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: primaryTextColor,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: primaryTextColor,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: secondaryTextColor,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: secondaryTextColor,
      letterSpacing: 0.1,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: secondaryTextColor,
      letterSpacing: 0.1,
    ),
  );
}
