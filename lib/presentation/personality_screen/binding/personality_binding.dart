import '../controller/personality_controller.dart';
import 'package:get/get.dart';

class PersonalityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalityController());
  }
}
