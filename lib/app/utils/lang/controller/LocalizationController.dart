import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../LocalizationService.dart';

class LocalizationController extends GetxController {
  final box = GetStorage();
  String lng = "English";
  @override
  void onInit() async {
    var value = box.read('lang');
      if(value != "") {
        lng = value.toString();
        setLanguage(lng);
        update();
      }
    super.onInit();
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setLanguage(String lang) {
    lng = lang;
    box.write("lang",lang);
    LocalizationService().changeLocale(lang);
  }
}