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
}
