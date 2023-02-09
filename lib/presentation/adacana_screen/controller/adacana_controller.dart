import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/adacana_screen/models/adacana_model.dart';

class AdacanaController extends GetxController {
  Rx<AdacanaModel> adacanaModelObj = AdacanaModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.loginOrSignupScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
