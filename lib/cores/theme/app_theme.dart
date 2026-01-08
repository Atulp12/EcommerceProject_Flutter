import 'package:ecommerce_app/cores/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    fontFamily: 'Montserrat',
    primaryColor: AppColor.primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.blackColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColor.blackColor,
      unselectedItemColor: AppColor.blackColor,
      backgroundColor: AppColor.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: AppColor.grey1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: AppColor.grey3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: AppColor.grey5),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 44),
      displayMedium: TextStyle(fontSize: 35),
      displaySmall: TextStyle(fontSize: 28),
      headlineLarge: TextStyle(fontSize: 22),
      headlineMedium: TextStyle(fontSize: 20),
      headlineSmall: TextStyle(fontSize: 18),
      titleLarge: TextStyle(fontSize: 16),
      titleMedium: TextStyle(fontSize: 14),
      titleSmall: TextStyle(fontSize: 12),
      bodyLarge: TextStyle(fontSize: 14),
      bodyMedium: TextStyle(fontSize: 13),
      bodySmall: TextStyle(fontSize: 12),
      labelLarge: TextStyle(fontSize: 14),
      labelMedium: TextStyle(fontSize: 12),
      labelSmall: TextStyle(fontSize: 10),
    ).apply(
      fontFamily: 'Montserrat',
      bodyColor: AppColor.blackColor,
      displayColor: AppColor.blackColor,
    ),
  );
}
