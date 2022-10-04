import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      scaffoldBackgroundColor: const Color(0xFF162035),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.shadesOfBlue5,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryBlueColor,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFC5C5C5),
        elevation: 0,
      ),
      dividerTheme: DividerThemeData(
        color: AppColor.shadesOfYellow1.withOpacity(0.5),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 27.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 22.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        headline6: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
        caption: TextStyle(
          fontSize: 10.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        overline: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
