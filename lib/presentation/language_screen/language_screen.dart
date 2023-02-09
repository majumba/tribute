import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/widgets/custom_button.dart';
import 'package:steve_s_application5/widgets/custom_icon_button.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 32,
            top: 52,
            right: 32,
            bottom: 52,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 60,
                width: 60,
                child: CustomImageView(
                  svgPath: ImageConstant.imgBack,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 37,
                ),
                child: Text(
                  "lbl_language".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold28,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "msg_your_settings_s".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 60,
                width: 311,
                text: "lbl_indonesian".tr,
                margin: getMargin(
                  top: 86,
                ),
                variant: ButtonVariant.FillDeeporange5005e,
                padding: ButtonPadding.PaddingAll20,
                fontStyle: ButtonFontStyle.PoppinsMedium12,
              ),
              CustomButton(
                height: 60,
                width: 311,
                text: "lbl_english".tr,
                margin: getMargin(
                  top: 14,
                ),
                variant: ButtonVariant.FillDeeppurpleA4005e,
                padding: ButtonPadding.PaddingAll20,
                fontStyle: ButtonFontStyle.PoppinsMedium12DeeppurpleA400,
              ),
              Spacer(),
              CustomButton(
                height: 60,
                width: 311,
                text: "lbl_save".tr,
                margin: getMargin(
                  bottom: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
