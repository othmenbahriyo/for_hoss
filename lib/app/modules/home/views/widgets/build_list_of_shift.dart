import 'package:bulldozer/app/data/model/shift_model.dart';
import 'package:bulldozer/app/modules/home/views/widgets/build_shift_card.dart';
import 'package:bulldozer/app/modules/shift_details/views/shift_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildListOfShift extends StatelessWidget {

   List? listOfShifts = <Shift>[];

  BuildListOfShift({Key? key,this.listOfShifts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:const EdgeInsets.only(top: 0,bottom: 70),
        itemCount: listOfShifts!.length,
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index){
          return  InkWell(
            onTap: ()=>Get.to(()=>ShiftDetailsView(),arguments: listOfShifts![index] ),
            child: ShiftCard(
              startAt:listOfShifts![index].startAt!,
              date: listOfShifts![index].startAt!,
              endAt: listOfShifts![index].endAt!,
              bonus: listOfShifts![index].bonus!.toString(),
              buyPrice: listOfShifts![index].buyPrice!.toString(),
              postName: listOfShifts![index].postName!,
              company: listOfShifts![index].company!,
            ),
          );
        });
  }
}
