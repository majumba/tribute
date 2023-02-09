import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/settings_screen/models/settings_model.dart';
import 'package:flutter/material.dart';

class SettingsController extends GetxController {
  TextEditingController personalityController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController termAndConditionController = TextEditingController();

  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    personalityController.dispose();
    languageController.dispose();
    termAndConditionController.dispose();
  }
}
