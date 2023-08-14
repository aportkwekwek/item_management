import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 60, 72, 107),
    hintColor: Color.fromARGB(255, 240, 240, 240),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 60, 72, 107),
      onPrimary: Color.fromARGB(255, 60, 72, 107),
      secondary: Color.fromARGB(255, 249, 217, 73),
      onSecondary: Color.fromARGB(255, 249, 217, 73),
      error: Color.fromARGB(255, 244, 80, 80),
      onError: Color.fromARGB(255, 244, 80, 80),
      background: Colors.white,
      onBackground: Colors.white,
      surface: Color.fromARGB(255, 39, 40, 41),
      onSurface: Color.fromARGB(255, 39, 40, 41),
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.montserrat(
          // Using GoogleFonts for specific text styles
          color: Color.fromARGB(255, 60, 72, 107),
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.montserrat(
          color: Color.fromARGB(255, 60, 72, 107),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: GoogleFonts.montserrat(
          color: Color.fromARGB(255, 60, 72, 107),
          fontSize: 16,
        ),
        displaySmall: GoogleFonts.montserrat()),
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 60, 72, 107),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 244, 80, 80),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 37, 43, 72),
    hintColor: Color.fromARGB(255, 68, 80, 105),
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromARGB(255, 37, 43, 72),
        onPrimary: Color.fromARGB(255, 37, 43, 72),
        secondary: Color.fromARGB(255, 91, 157, 139),
        onSecondary: Color.fromARGB(255, 91, 157, 139),
        error: Colors.redAccent,
        onError: Colors.redAccent,
        background: Colors.black,
        onBackground: Colors.black,
        surface: Colors.transparent,
        onSurface: Colors.transparent),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 37, 43, 72),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 4, 77, 179),
      foregroundColor: Colors.white,
    ),
  );
}
