import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/language_screen/models/language_model.dart';

class LanguageController extends GetxController {
  Rx<LanguageModel> languageModelObj = LanguageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
