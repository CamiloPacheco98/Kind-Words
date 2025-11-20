import 'package:flutter/material.dart';

class AppTheme {
  // Color palette
  static const Color lavender = Color(0xFFD8D8F6);
  static const Color amethystSmoke = Color(0xFFB18FCF);
  static const Color lilacAsh = Color(0xFF978897);
  static const Color charcoal = Color(0xFF494850);
  static const Color shadowGrey = Color(0xFF2C2C34);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: amethystSmoke,
      secondary: lilacAsh,
      surface: lavender,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: charcoal,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: amethystSmoke,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardThemeData(color: lavender, elevation: 2),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: amethystSmoke,
        foregroundColor: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: charcoal),
      bodyMedium: TextStyle(color: charcoal),
      bodySmall: TextStyle(color: lilacAsh),
    ),
  );
}
