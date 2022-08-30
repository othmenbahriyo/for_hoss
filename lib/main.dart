import 'package:bulldozer/app/constants/themes/dark_themes.dart';
import 'package:bulldozer/app/constants/themes/light_themes.dart';
import 'package:bulldozer/app/modules/home/bindings/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/lang/LocalizationService.dart';
import 'app/utils/logger/logger_utils.dart';
import 'app/utils/theme/theme_service.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      theme: lightThemes(),
      darkTheme: darkThemes(),
      themeMode: ThemeService().theme,
      logWriterCallback: Logger.write,
      translations: LocalizationService(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: const Locale("fr", "FR"),
      fallbackLocale: LocalizationService.fallBackLocale,
    ),
  );
}
