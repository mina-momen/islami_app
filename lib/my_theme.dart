import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color scecondryColor = Color(0xff242424);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondary = Color(0xffFACC1D);
  static const Color darkColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      displayLarge: TextStyle(
          fontFamily: 'Amiri',
          color: primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      bodySmall: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w300),
      bodyMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700),
    ),
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        size: 25,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      backgroundColor: primaryColor,
      elevation: 100,
      type: BottomNavigationBarType.fixed,
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );

  //===========================================================

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      //for theme
      displayMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      displayLarge: TextStyle(
          fontFamily: 'Amiri',
          color: primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      //--------------------
      titleMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      bodySmall: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300),
      bodyMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Color(0xffFACC1D),
          fontSize: 25,
          fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700),
    ),
    brightness: Brightness.dark,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    cardTheme: CardTheme(
        color: darkPrimary,
        margin: EdgeInsets.all(30),
        elevation: 10,
        surfaceTintColor: Colors.transparent),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.yellowAccent,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        size: 25,
      ),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff141A2E),
    ),
    dividerColor: darkSecondary,
    scaffoldBackgroundColor: Colors.transparent,
  );
}
