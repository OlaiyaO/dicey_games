import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DiceyTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.all(8.0),
        horizontalTitleGap: 16.0,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        selectedColor: Colors.white,
        selectedTileColor: Colors.white,
        tileColor: Colors.black26,
        style: ListTileStyle.drawer,

      ),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white70),
          foregroundColor: MaterialStatePropertyAll(Colors.black),
          overlayColor: MaterialStatePropertyAll(Colors.black26),
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),

          side: MaterialStatePropertyAll(
              BorderSide(
                color: Colors.black38,
              ),),
          elevation: MaterialStatePropertyAll(2),

        ),

      ),
      drawerTheme: DrawerThemeData(

        endShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(16.0), right: Radius.zero),
            side: BorderSide(
              color: Colors.white,
              // width: 2.0,
            ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.shade100,
        scrimColor: Colors.black26,
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        extendedPadding: const EdgeInsets.all(16),
        foregroundColor: Colors.red,
        backgroundColor: Colors.white,
        extendedIconLabelSpacing: 32.0,
        splashColor: Colors.red.shade200,
        extendedTextStyle: GoogleFonts.openSans(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
      scaffoldBackgroundColor: Colors.white70,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
