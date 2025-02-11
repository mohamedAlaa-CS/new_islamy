import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: "jana",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primaryColor,
        selectedIconTheme: IconThemeData(color: AppColor.white),
        unselectedIconTheme: IconThemeData(color: AppColor.secondColor),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.white,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColor.primaryColor,
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.primaryColor),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColor.secondColor.withOpacity(.7),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
              width: 1.5,
            ),
          )));
  static ThemeData darkTheme = ThemeData();
}
