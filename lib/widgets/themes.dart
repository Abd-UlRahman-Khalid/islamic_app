import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18)
        )
      ),
    ),
    cardColor: Colors.white,
    secondaryHeaderColor: lightPrimary,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 22, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 28, color: Colors.black),
      titleSmall: TextStyle(fontSize: 14,color: Colors.black)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 36,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 26,
        ),
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black),
  );
  static final ThemeData dartTheme = ThemeData(
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18)
        )
      ),
    ),
    cardColor: darkPrimary,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 22, color: Colors.white),
      headlineMedium: TextStyle(fontSize: 22, color: Colors.white),
      titleSmall: TextStyle(fontSize: 14,color: Colors.white)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimary,
    secondaryHeaderColor: Color(0xFFFACC1D),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Color(0xFFFACC1D),
          size: 36,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 26,
        ),
        selectedLabelStyle: TextStyle(color: Color(0xFFFACC1D)),
        selectedItemColor: Color(0xFFFACC1D)),
  );
}
