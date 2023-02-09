import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';
import 'package:tribute/widgets/custom_button.dart';
import 'package:tribute/widgets/custom_text_form_field.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 32,
            top: 37,
            right: 32,
            bottom: 37,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.gray5063,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.gray90063,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Container(
                  height: getVerticalSize(
                    60.00,
                  ),
                  width: getHorizontalSize(
                    67.00,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 26,
                    right: 30,
                    bottom: 26,
                  ),
                  decoration: AppDecoration.outlineGray90063.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowicon,
                        height: getVerticalSize(
                          6.00,
                        ),
                        width: getHorizontalSize(
                          4.00,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 60,
                ),
                child: Text(
                  "lbl_settings".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold28,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
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
              CustomTextFormField(
                width: 311,
                focusNode: FocusNode(),
                controller: controller.personalityController,
                hintText: "lbl_personality".tr,
                margin: getMargin(
                  top: 33,
                ),
                variant: TextFormFieldVariant.OutlineBlack9000c,
                shape: TextFormFieldShape.RoundedBorder14,
                padding: TextFormFieldPadding.PaddingT20,
                fontStyle: TextFormFieldFontStyle.PoppinsMedium12,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 27,
                    right: 28,
                    bottom: 27,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrow,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    60.00,
                  ),
                ),
              ),
              CustomTextFormField(
                width: 311,
                focusNode: FocusNode(),
                controller: controller.languageController,
                hintText: "lbl_language".tr,
                margin: getMargin(
                  top: 14,
                ),
                variant: TextFormFieldVariant.OutlineBlack9000c,
                shape: TextFormFieldShape.RoundedBorder14,
                padding: TextFormFieldPadding.PaddingT20,
                fontStyle: TextFormFieldFontStyle.PoppinsMedium12,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 27,
                    right: 28,
                    bottom: 27,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrow,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    60.00,
                  ),
                ),
              ),
              CustomTextFormField(
                width: 311,
                focusNode: FocusNode(),
                controller: controller.termAndConditionController,
                hintText: "msg_terms_and_condi".tr,
                margin: getMargin(
                  top: 14,
                ),
                variant: TextFormFieldVariant.OutlineBlack9000c,
                shape: TextFormFieldShape.RoundedBorder14,
                padding: TextFormFieldPadding.PaddingT20,
                fontStyle: TextFormFieldFontStyle.PoppinsMedium12,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 27,
                    right: 28,
                    bottom: 27,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrow,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    60.00,
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                height: 60,
                width: 311,
                text: "lbl_log_out".tr,
                margin: getMargin(
                  bottom: 69,
                ),
                variant: ButtonVariant.OutlineRedA40066,
                fontStyle: ButtonFontStyle.PoppinsSemiBold16RedA40090,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
