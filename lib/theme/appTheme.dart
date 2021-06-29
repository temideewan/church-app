import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

ThemeData createTheme() {
  return new ThemeData(
      primarySwatch: Colors.lightGreen,
      dividerColor: Color(0xFFF0F1FA),
      backgroundColor: Color(0xffffffff),
      accentColor: ColorLibrary.primaryGreen,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat dark',
            fontSize: 30,
            fontWeight: FontWeight.w700),
        headline2: TextStyle(
            color: ColorLibrary.primaryHeading,
            fontFamily: "Helvetica Bold",
            fontSize: 19.0,
            fontWeight: FontWeight.w700),
        headline3: TextStyle(
            color: ColorLibrary.textColorDark,
            fontFamily: "Montserrat Medium",
            fontWeight: FontWeight.w600,
            fontSize: 14),
        bodyText1: TextStyle(
            color: ColorLibrary.paraDark,
            fontFamily: 'Montserrat Bold',
            fontWeight: FontWeight.w600,
            fontSize: 11.0),
        bodyText2: TextStyle(
            color: ColorLibrary.textMuted,
            fontFamily: 'Montserrat Bold',
            fontWeight: FontWeight.w600,
            fontSize: 10.0),
        subtitle1: TextStyle(
            color: ColorLibrary.textColorDark,
            fontFamily: 'Montserrat Bold',
            fontWeight: FontWeight.w600,
            fontSize: 12.0),
      ));
}
