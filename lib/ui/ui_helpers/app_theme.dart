import 'package:bmi_app/ui/ui_helpers/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: kcAppBackgroundColor,
    brightness: Brightness.light,
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black)),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: kcAppBackgroundColor2,
    brightness: Brightness.dark,
    // textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    button: _buttonLight,
    subtitle1: _subTitleLight,
    titleLarge: _titleLight,
  );
  static final TextTheme darkTextTheme = TextTheme(
    button: _buttonDark,
    subtitle1: _subTitleDark,
    titleLarge: _titleDark,
  );

  static const TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 28,
  );
  static const TextStyle _subTitleLight = TextStyle(
    color: kcSubTitleColor,
    fontSize: 18,
    height: 1.5,
  );
  static const TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 22,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);
  static final TextStyle _subTitleDark =
      _titleLight.copyWith(color: Colors.white70);
  static final TextStyle _buttonDark =
      _titleLight.copyWith(color: Colors.white);
}
