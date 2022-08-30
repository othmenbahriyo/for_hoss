import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/strings/en_US.dart';
import '../../constants/strings/fr_FR.dart';

class LocalizationService extends Translations {

  static final local = Locale("en", "US");
  static final fallBackLocale = Locale("en", "US");

  static final langs = [["English", "US"], ["Français", "FR"]];
  static final locales = [
    Locale("en", "US"),
    Locale("fr", "FR"),
  ];

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US": en_US,
    "fr_FR": fr_FR
  };

  void changeLocale(String lang) {
    final locale  = getLocaleFromLamguage(lang);
    Get.updateLocale(locale);
  }

  Locale getLocaleFromLamguage(String lang) {
    for(int i = 0; i < langs.length; i++) {
      if(lang == langs[i][0]) return locales[i];
    }
    return Get.locale!;
  }

}