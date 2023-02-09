import '../controller/adacana_controller.dart';
import 'package:get/get.dart';

class AdacanaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdacanaController());
  }
}
