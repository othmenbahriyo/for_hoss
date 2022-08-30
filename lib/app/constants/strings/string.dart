import 'package:flutter/material.dart';

class Constants {
  static const apiAddress = "";
  static const role = "PARTNER";
  static const font = "Red Hat Text";
  static const sfProText = "SF Pro Text";
  static const kFontColorPallets = [
    Color.fromRGBO(26, 31, 56, 1),
    Color.fromRGBO(72, 76, 99, 1),
    Color.fromRGBO(149, 149, 163, 1),
  ];
  static const kBorderRadius = 10.0;
  static const kSpacing = 20.0;
  static const kTileHeight = 50.0;

  static const completeColor = Color(0xff5e6172);
  static const inProgressColor = Color(0xff5ec792);
  static const todoColor = Color(0xffd1d2d7);

  static const completeColorOrder = Colors.white;
  static Color inProgressColorOrder = Color(0xffffffff).withOpacity(0.6);
  static Color todoColorOrder = Color(0xffffffff).withOpacity(0.4);
}