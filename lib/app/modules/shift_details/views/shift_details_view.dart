import 'package:bulldozer/app/utils/helpers/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shift_details_controller.dart';

class ShiftDetailsView extends GetView<ShiftDetailsController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ShiftDetailsController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: InkWell(
            onTap: ()=>Get.back(),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 61.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://st2.depositphotos.com/3591429/5246/i/450/depositphotos_52463231-stock-photo-business-people-working.jpg'),
                  radius: 60.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  Get.arguments!.company!,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              Get.arguments!.startAt!,
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w400, fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Text(
                    Get.arguments!.postName!,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${Get.arguments!.buyPrice}/H",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                const Spacer(),
                Text(
                  "${formatTimeOnly(Get.arguments!.startAt!)} - ${formatTimeOnly(Get.arguments!.endAt!)}",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.add_location_alt_outlined,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: FutureBuilder(
                  future: controller.getAddress(
                    Get.arguments.latitude,
                    Get.arguments.longitude,
                  ),
                  builder: (context, snapshot,) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasError) {
                        return const Text(
                          'Error',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        );
                      } else if (snapshot.hasData) {
                        return Text(
                          snapshot.data.toString(),
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        );
                      } else {
                        return const Text(
                          'Empty data',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        );
                      }
                    } else {
                      return Text(
                        'State: ${snapshot.connectionState}',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      );
                    }
                  },
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  "Bonus au travaileur: +${Get.arguments!.bonus} \$/H",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.pause_circle_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  "Pause de 30 minutes",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  "Stationnement gratuit",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.person_pin_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  "Pontalon noire,chimise noir",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "RESPONSABLE",
              style: Get.textTheme.headline3!.copyWith(
                  color: const Color(0xffc2c2c2),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              Get.arguments!.company!,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff53c5cd),
                    )),
                child: const Text('Postuler'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
