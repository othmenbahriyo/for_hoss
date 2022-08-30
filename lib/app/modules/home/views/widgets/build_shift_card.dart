import 'package:bulldozer/app/utils/helpers/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShiftCard extends StatelessWidget {
  const ShiftCard({Key? key, this.company, this.date, this.postName, this.endAt, this.startAt, this.buyPrice, this.bonus}) : super(key: key);

  final String? company;
  final String? date;
  final String? postName;
  final String? endAt;
  final String? startAt;
  final String? buyPrice;
  final String? bonus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(company!,style: Get.textTheme.headline3!.copyWith(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 19),),
          const SizedBox(height: 10,),
          Text(formatDate(date!),style: Get.textTheme.headline3!.copyWith(color: Colors.red),),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                padding:const EdgeInsets.all(8),
                width: Get.width * .2,
                height: 40,
                margin: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(15)

                ),
                child:  Center(
                  child: Text(postName!,
                    maxLines: 1,
                    overflow:TextOverflow.ellipsis ,
                    style: Get.textTheme.headline3!.copyWith(color:const Color(0xffc2c2c2)),),
                ),

              ),
              const SizedBox(width: 10,),
              Text("$buyPrice\$ / H",
                maxLines: 1,
                overflow:TextOverflow.ellipsis ,
                style: Get.textTheme.headline3!.copyWith(color:const Color(0xffc2c2c2),fontSize: 13),),
              Text(" + $bonus\$ / H",style: Get.textTheme.headline3!.copyWith(color:const Color(0xffc4efc8),fontSize: 13),),
              const Spacer(),
              Text("${formatTimeOnly(startAt!)} - ${formatTimeOnly(endAt!)}",style: Get.textTheme.headline3!.copyWith(color: Colors.red,fontSize: 14),),

            ],
          )
        ],
      ),
    );
  }
}
