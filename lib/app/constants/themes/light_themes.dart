import 'package:bulldozer/app/constants/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightThemes() {
  const OutlineInputBorder myInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
     borderSide:BorderSide(
    width: 0,
    style: BorderStyle.none,
  ),);

  return ThemeData.light().copyWith(
    canvasColor: Colors.transparent,

    backgroundColor:const Color(0xffF3F9FE),
    appBarTheme: const AppBarTheme(
      color:  Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      iconTheme: IconThemeData(
          color: Colors.black
      ) ,
    ),
    bottomSheetTheme:const BottomSheetThemeData(backgroundColor: Colors.transparent,elevation: 0),
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.transparent,
        //labelStyle: TextStyle(color: Colors.red),
        hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: Constants.font),
        border: myInputBorder,
        enabledBorder: myInputBorder,
        focusedBorder: myInputBorder,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.all(16),
        ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize:  32 ,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Color(0xff32324d)),
      headline2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Color(0xffA5A5BA)),
      headline3: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: Constants.font,
          color: Colors.black
      ),
      headline4: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Color(0xffA5A5BA)),
      headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),    ),

    // colorScheme: const ColorScheme(
    //   background: Colors.white,
  );
}