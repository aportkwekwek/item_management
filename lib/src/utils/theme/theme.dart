import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightGreenAccent,
    hintColor: Colors.greenAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.montserrat(
        // Using GoogleFonts for specific text styles
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.lightGreenAccent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.lightGreenAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.greenAccent,
    hintColor: Colors.lightGreenAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.montserrat(
        color: Colors.lightGreenAccent,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.montserrat(
        color: Colors.lightGreenAccent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: Colors.lightGreenAccent,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.lightGreenAccent),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.lightGreenAccent,
      foregroundColor: Colors.black,
    ),
  );
}
