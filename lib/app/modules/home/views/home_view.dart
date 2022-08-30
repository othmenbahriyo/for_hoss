import 'package:bulldozer/app/modules/home/views/widgets/build_bottom_sheet.dart';
import 'package:bulldozer/app/modules/home/views/widgets/build_list_of_shift.dart';
import 'package:bulldozer/app/modules/home/views/widgets/build_loader.dart';
import 'package:bulldozer/app/modules/home/views/widgets/build_shift_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor:const Color(0xfff2f2f2),
        body: Padding(
          padding:const EdgeInsets.fromLTRB(6,35,16,6),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("DERNIERE MINUTE",
                  style: Get.textTheme.headline3!.copyWith(
                      color: const Color(0xffc2c2c2),fontSize: 17,fontWeight: FontWeight.w500),
                ),

                Obx(() => controller.statusLastShift.value == 0 ?const  BuildLoader(item: 2,) : controller.statusLastShift.value == 1 ?
                BuildListOfShift(listOfShifts: controller.listOfLastShifts,) : Center(child: Image.asset("assets/nodata.png"))
                ),

               const SizedBox(height: 20,),
                Text("SHIFT A VENIR",
                  style: Get.textTheme.headline3!.copyWith(
                      color: const Color(0xffc2c2c2),fontSize: 17,fontWeight: FontWeight.w500),
                ),
                controller.obx(
                      (state) => BuildListOfShift(listOfShifts: controller.listOfShifts,),
                  onLoading:const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: BuildLoader(item: 4,)
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet:const BuildBottomSheet()
      ),
    );
  }
}
