import 'controller/adacana_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';

class AdacanaScreen extends GetWidget<AdacanaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: getVerticalSize(325.00),
                          width: getHorizontalSize(238.00),
                          margin: getMargin(top: 1),
                          onTap: () {
                            onTapImgLogo();
                          })
                    ]))));
  }

  onTapImgLogo() {
    Get.toNamed(AppRoutes.loginOrSignupScreen);
  }
}
