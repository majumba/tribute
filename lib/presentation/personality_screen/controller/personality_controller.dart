import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/personality_screen/models/personality_model.dart';
import 'package:flutter/material.dart';

class PersonalityController extends GetxController {
  TextEditingController usernameOneController = TextEditingController();

  TextEditingController firstnameOneController = TextEditingController();

  TextEditingController lastnameOneController = TextEditingController();

  TextEditingController hobbyOneController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController countryOneController = TextEditingController();

  Rx<PersonalityModel> personalityModelObj = PersonalityModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameOneController.dispose();
    firstnameOneController.dispose();
    lastnameOneController.dispose();
    hobbyOneController.dispose();
    priceController.dispose();
    countryOneController.dispose();
  }
}
