import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';



class ShiftDetailsController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  /// function to get adress from lon & lat
 Future<String>  getAddress(double latitude , double longitude) async {
   List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
    return "${placemarks[0].street} ${placemarks[0].country} ${placemarks[0].postalCode}" ;
 }



}
