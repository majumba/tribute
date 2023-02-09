import 'package:tribute/core/app_export.dart';
import 'package:tribute/presentation/adacana_screen/models/adacana_model.dart';

class AdacanaController extends GetxController {
  Rx<AdacanaModel> adacanaModelObj = AdacanaModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
