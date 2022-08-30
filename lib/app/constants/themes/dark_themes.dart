import 'package:flutter/material.dart';

import '../strings/string.dart';

ThemeData darkThemes() {
  const OutlineInputBorder myInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide:BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),);

  return ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Color(0xFF2C8BFE),
      elevation: 0,
    ),
    bottomSheetTheme:const BottomSheetThemeData(backgroundColor: Colors.transparent,elevation: 0),

    inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.transparent,
        hintStyle: TextStyle(
            color: Color(0xFF8E8EA9),
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: Constants.font),
        border: myInputBorder,
        enabledBorder: myInputBorder,
        focusedBorder: myInputBorder,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.all(16),
        focusColor: Color(0xFF5AC8FA)),
    primaryColor: const Color(0xFF2C8BFE),
    scaffoldBackgroundColor: Colors.black,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff0052CC),
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            fontFamily: Constants.font,
            color: Colors.white),
        headline2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: Constants.font,
            color: Colors.white),
        headline3: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: Constants.font,
            color: Color(0xFF2C8BFE)),
      bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.white),
      bodyText2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: Constants.font,
          color: Colors.white),),
  );
}
