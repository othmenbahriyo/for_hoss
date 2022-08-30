import 'dart:convert';

import 'package:bulldozer/app/data/model/shift_model.dart';
import 'package:bulldozer/app/utils/helpers/date_formatter.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {


  /// list of Shift
  RxList<Shift> listOfShifts = <Shift>[].obs;

  /// list of last Shift
  RxList<Shift> listOfLastShifts = <Shift>[].obs;

  /// int to get status of listOfLastShifts
  /// 0 = loading ... 1 = success... 2 = empty
  RxInt statusLastShift = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllProduct();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  ///function to  get list of shift
  /// if i have a token i will integrate pagination &  pull to refresh ....
  Future getAllProduct() async {
    listOfShifts.clear();
    statusLastShift.value =0;
    change(listOfShifts, status: RxStatus.loading());
    await Future.delayed(const Duration(seconds: 3));
    final String response = await rootBundle.loadString('lib/app/data/file_data/data_json.json');
    final data = await json.decode(response);
    for(int i = 0; i < data['data'].length ; i++) {
      var shift = Shift.fromJson(data['data'][i]);
      if(formatDateOnly(shift.startAt!) == formatDateOnly(DateTime.now().toString())){
        listOfLastShifts.add(shift);
      } else {
        listOfShifts.add(shift);
      }
    }
    if(listOfLastShifts.isEmpty){
      statusLastShift.value =2;
    } else {
      statusLastShift.value =1;
    }

    if(listOfShifts.isEmpty) {
      change(listOfShifts, status: RxStatus.empty());
    }
    else {
      change(listOfShifts, status: RxStatus.success());
    }


  }
}
