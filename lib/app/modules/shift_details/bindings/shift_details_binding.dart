import 'package:get/get.dart';

import '../controllers/shift_details_controller.dart';

class ShiftDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShiftDetailsController>(
      () => ShiftDetailsController(),
    );
  }
}
