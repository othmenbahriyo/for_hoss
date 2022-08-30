import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {
  ThemeMode get theme => ThemeMode.system;

  void switchTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
}
