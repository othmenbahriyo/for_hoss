import 'package:bulldozer/app/modules/home/bindings/home_binding.dart';
import 'package:bulldozer/app/modules/home/views/home_view.dart';
import 'package:bulldozer/app/modules/shift_details/bindings/shift_details_binding.dart';
import 'package:bulldozer/app/modules/shift_details/views/shift_details_view.dart';
import 'package:get/get.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
        //middlewares: [AdminMiddleware()]
    ),
    GetPage(
      name: _Paths.SHIFTDETAILS,
      page: () => ShiftDetailsView(),
      binding: ShiftDetailsBinding(),
        //middlewares: [AdminMiddleware()]
    ),
  ];
}
