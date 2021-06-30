import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

ThemeData createTheme() {
  return new ThemeData(
      primarySwatch: Colors.lightGreen,
      dividerColor: Color(0xFFF0F1FA),
      backgroundColor: Color(0xffffffff),
      accentColor: ColorLibrary.primaryGreen,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: ColorLibrary.textColorDark,
                  fontFamily: "Montserrat-Medium",
                  fontWeight: FontWeight.w600,
                  fontSize: 21))),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat-dark',
            fontSize: 30,
            fontWeight: FontWeight.w700),
        headline2: TextStyle(
            color: ColorLibrary.primaryHeading,
            fontFamily: "Helvetica-Bold",
            fontSize: 19.0,
            fontWeight: FontWeight.w700),
        headline3: TextStyle(
            color: ColorLibrary.textColorDark,
            fontFamily: "Montserrat-Medium",
            fontWeight: FontWeight.w600,
            fontSize: 14),
        bodyText1: TextStyle(
            color: ColorLibrary.paraDark,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 11.0),
        bodyText2: TextStyle(
            color: ColorLibrary.textMuted,
            fontFamily: 'Montserrat-Bold',
            fontWeight: FontWeight.w600,
            fontSize: 10.0),
        subtitle1: TextStyle(
            color: ColorLibrary.textColorDark,
            fontFamily: 'Montserrat-Bold',
            fontWeight: FontWeight.w600,
            fontSize: 12.0),
        subtitle2: TextStyle(
            color: ColorLibrary.textColorDark,
            fontFamily: 'Nunito-Bold',
            fontWeight: FontWeight.w600,
            fontSize: 16.0),
      ));
}
