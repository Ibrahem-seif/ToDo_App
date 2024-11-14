import 'package:flutter/material.dart';
import 'package:todoo_app/core/utils/text_styles.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorsManager.mainLight,
    appBarTheme: AppBarTheme(
      color: ColorsManager.blue,
      titleTextStyle: LightTextStyles.appBar,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      shape: StadiumBorder(
        side: BorderSide(
          color: ColorsManager.white,
          width: 4,
        ),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 3,
      shape: CircularNotchedRectangle(),
      color: ColorsManager.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      selectedItemColor: ColorsManager.blue,
      unselectedItemColor: ColorsManager.gray,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.mainLight,
      onPrimary: ColorsManager.mainLight,
      onSecondary: ColorsManager.white,
    ),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorsManager.mainDark,
    appBarTheme: AppBarTheme(
      color: ColorsManager.blue,
      titleTextStyle: DarkTextStyles.appBar,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      shape: StadiumBorder(
        side: BorderSide(
          color: ColorsManager.black,
          width: 4,
        ),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 3,
      shape: CircularNotchedRectangle(),
      color: ColorsManager.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      selectedItemColor: ColorsManager.blue,
      unselectedItemColor: ColorsManager.gray,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.mainDark,
      onPrimary: ColorsManager.mainDark,
      onSecondary: ColorsManager.black,
    ),
  );
}
