import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    textTheme: GoogleFonts.mondaTextTheme(),
    scaffoldBackgroundColor: AppColors.white);

class AppColors {
  static const Color green = Color(0xFF3AB03A);
  static const Color red = Color(0xFFDC4848);
  static const Color black = Colors.black;
  static const Color white = Color(0xFFFBFBFB);
  static const Color grey = Color(0xFFC8C4C4);
  static const Color lightGrey = Color(0xFFF1F1F1);
  static const Color beige = Color(0xFFEEE7E7);
  static const Color yellow = Color(0xFFFFC107);
}

/*
  1. monda
  2. poppins
*/