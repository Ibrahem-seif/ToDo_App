import 'package:flutter/material.dart';
import 'package:todoo_app/core/utils/text_styles.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.mainLight,
      onPrimary: ColorsManager.mainLight,
      onSecondary: ColorsManager.white,
    ),
    scaffoldBackgroundColor: ColorsManager.mainLight,
    appBarTheme: AppBarTheme(
      color: ColorsManager.blue,
      titleTextStyle: LightTextStyles.appBar,
      elevation: 0,
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
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManager.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStatePropertyAll<Color>(ColorsManager.white),
        backgroundColor: WidgetStatePropertyAll(ColorsManager.blue),
      ),
    ),
    iconTheme: const IconThemeData(
      color: ColorsManager.white,
    ),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.mainDark,
      onPrimary: ColorsManager.mainDark,
      onSecondary: ColorsManager.black,
    ),
    scaffoldBackgroundColor: ColorsManager.mainDark,
    appBarTheme: AppBarTheme(
      color: ColorsManager.blue,
      titleTextStyle: DarkTextStyles.appBar,
      elevation: 0,
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
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManager.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStatePropertyAll<Color>(ColorsManager.white),
        backgroundColor: WidgetStatePropertyAll(ColorsManager.blue),
      ),
    ),
    iconTheme: const IconThemeData(
      color: ColorsManager.white,
      weight: 3,
    ),
  );
}
