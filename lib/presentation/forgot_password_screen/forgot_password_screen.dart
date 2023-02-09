import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/widgets/app_bar/appbar_stack.dart';
import 'package:steve_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:steve_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:steve_s_application5/widgets/custom_button.dart';
import 'package:steve_s_application5/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 86,
                leading: AppbarStack(margin: getMargin(left: 19)),
                title: AppbarTitle(
                    text: "lbl_forgot_password".tr,
                    margin: getMargin(left: 102))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 31, top: 21, right: 31, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(183.00),
                          width: getHorizontalSize(262.00),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: getHorizontalSize(245.00),
                                    child: Text("msg_if_you_are_alwa".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Gray9007e
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.12))))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: getHorizontalSize(262.00),
                                    child: Text("msg_helping_others".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold34)))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgLogoGray50121x135,
                          height: getVerticalSize(121.00),
                          width: getHorizontalSize(135.00),
                          alignment: Alignment.center,
                          margin: getMargin(top: 37)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 27),
                              child: Text("lbl_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomTextFormField(
                          width: 311,
                          focusNode: FocusNode(),
                          controller: controller.yourEmailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(top: 45),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      Container(
                          width: getHorizontalSize(246.00),
                          margin: getMargin(top: 19),
                          child: Text("msg_lorem_ipsum_dol".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      CustomButton(
                          height: 60,
                          width: 311,
                          text: "lbl_start".tr,
                          margin: getMargin(top: 18, bottom: 5),
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle: ButtonFontStyle.PoppinsMedium14,
                          onTap: onTapStart)
                    ]))));
  }

  onTapStart() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
