import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class BuildLoader extends StatelessWidget {
  const BuildLoader({Key? key, required this.item}) : super(key: key);
  final  int item ;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: const Color(0xfff2f2f2),
      child: ListView.builder(
        padding:const EdgeInsets.only(top: 0),
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              height: 125,
              margin: const EdgeInsets.all(4),
              width: Get.width ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
            )
        ),
        itemCount: item,
      ),
    );
  }
}
