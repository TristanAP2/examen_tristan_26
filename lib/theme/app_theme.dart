import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: primary,
    ),
 
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation: 5,
          ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 10,
    ),
    
  );
}