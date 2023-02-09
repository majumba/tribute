import '../controller/work_today_controller.dart';
import 'package:get/get.dart';

class WorkTodayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkTodayController());
  }
}
