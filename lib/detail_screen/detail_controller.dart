import 'package:get/get.dart';
import 'package:project_cleancode/planet_data/planet_data.dart';

class DetailScreenController extends GetxController{
  late final PlanetData planet;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onInit() {
    planet = Get.arguments as PlanetData;
    super.onInit();
  }
}