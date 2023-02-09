import 'controller/termsandconditions_controller.dart';
import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';
import 'package:tribute/widgets/custom_icon_button.dart';

class TermsandconditionsScreen extends GetWidget<TermsandconditionsController> {
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
            top: 50,
            right: 32,
            bottom: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 60,
                width: 60,
                margin: getMargin(
                  top: 8,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgBack,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  155.00,
                ),
                margin: getMargin(
                  top: 27,
                ),
                child: Text(
                  "msg_terms_and_condi".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold28,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  285.00,
                ),
                margin: getMargin(
                  top: 63,
                ),
                child: Text(
                  "msg_lorem_ipsum_dol2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Gray900a2.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
