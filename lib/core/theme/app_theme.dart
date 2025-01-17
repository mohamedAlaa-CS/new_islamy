import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
      textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColor.primaryColor,
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColor.primaryColor),
    ),
  ));
  static ThemeData darkTheme = ThemeData();
}
