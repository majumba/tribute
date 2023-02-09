import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/login_or_signup_screen/models/login_or_signup_model.dart';

class LoginOrSignupController extends GetxController {
  Rx<LoginOrSignupModel> loginOrSignupModelObj = LoginOrSignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
