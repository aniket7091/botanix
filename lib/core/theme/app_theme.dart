import 'package:botanix/core/colors/App_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,

    scaffoldBackgroundColor: Colors.white,


    // for app bar theme

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    //for text theme
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black87),
      bodySmall: TextStyle(color: Colors.black54),
    ),

    cardColor: Colors.white,


    //elevated button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        textStyle: TextStyle(color: Colors.white)
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.light,
    ),
  );



  // for dark theme

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green,

    scaffoldBackgroundColor: const Color(0xFF121212),

    // for app bar theme

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      foregroundColor: Colors.white,
      elevation: 0,
    ),


    //for text theme

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
    ),


    cardColor: const Color(0xFF1E1E1E),


    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(color: Colors.white)
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
    ),

  );
}
