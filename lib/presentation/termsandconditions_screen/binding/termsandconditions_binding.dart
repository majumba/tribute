import '../controller/termsandconditions_controller.dart';
import 'package:get/get.dart';

class TermsandconditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsandconditionsController());
  }
}
