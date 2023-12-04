import 'package:get/get.dart';
import 'package:project_cleancode/detail_screen/detail_controller.dart';

class DetailScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailScreenController());
  }
}
