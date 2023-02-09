import '../controller/login_or_signup_controller.dart';
import 'package:get/get.dart';

class LoginOrSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginOrSignupController());
  }
}
