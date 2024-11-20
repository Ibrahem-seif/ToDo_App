import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';

class LightTextStyles {
  static TextStyle appBar = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainDark,
  );
  static TextStyle settingsLable = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainDark,
  );
  static TextStyle settingsItem = GoogleFonts.poppins(
    fontSize: 14,
    color: ColorsManager.blue,
  );
  static TextStyle bottomSheetTitle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.black,
  );
  static TextStyle hint = GoogleFonts.poppins(
    fontSize: 14,
    color: ColorsManager.gray,
  );
  static TextStyle taskTitle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.blue,
  );
  static TextStyle taskDetails = GoogleFonts.poppins(
    fontSize: 14,
    // fontWeight: FontWeight.w700,
    color: ColorsManager.black,
  );
  static TextStyle calnderText = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: ColorsManager.black,
  );
}

class DarkTextStyles {
  static TextStyle appBar = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );
  static TextStyle settingsLable = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );
  static TextStyle settingsItem = GoogleFonts.poppins(
    fontSize: 14,
    color: ColorsManager.blue,
  );
  static TextStyle bottomSheetTitle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );
  static TextStyle hint = GoogleFonts.poppins(
    fontSize: 14,
    color: ColorsManager.gray,
  );
  static TextStyle taskTitle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.blue,
  );
  static TextStyle taskDetails = GoogleFonts.poppins(
    fontSize: 14,
    // fontWeight: FontWeight.w700,
    color: ColorsManager.white,
  );
  static TextStyle calnderText = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: ColorsManager.white,
  );
}
