import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'Roboto',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white.withOpacity(0.2),
      labelStyle: const TextStyle(color: Colors.white),
      hintStyle: const TextStyle(color: Colors.white70),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF000AA4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
      ),
    ),
  );
}
