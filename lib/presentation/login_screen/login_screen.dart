import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';
import 'package:tribute/widgets/app_bar/appbar_title.dart';
import 'package:tribute/widgets/app_bar/custom_app_bar.dart';
import 'package:tribute/widgets/custom_button.dart';
import 'package:tribute/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
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
                leadingWidth: 101,
                leading: Container(
                    margin: getMargin(left: 29),
                    padding:
                        getPadding(left: 33, top: 26, right: 33, bottom: 26),
                    decoration: AppDecoration.outlineGray90063.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowicon,
                              height: getVerticalSize(6.00),
                              width: getHorizontalSize(4.00),
                              alignment: Alignment.centerRight,
                              margin: getMargin(
                                  left: 34, top: 26, right: 33, bottom: 27))
                        ])),
                actions: [
                  AppbarTitle(
                      text: "lbl_login".tr,
                      margin:
                          getMargin(left: 47, top: 18, right: 47, bottom: 14))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 32, top: 18, right: 32, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(221.00),
                                  child: Text("msg_this_is_your_co".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold34)),
                              Container(
                                  width: getHorizontalSize(282.00),
                                  margin: getMargin(top: 1),
                                  child: Text("msg_our_community_i2".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLogoGray50113x116,
                                  height: getVerticalSize(113.00),
                                  width: getHorizontalSize(116.00),
                                  alignment: Alignment.center,
                                  margin: getMargin(top: 21)),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(top: 115),
                                  shape: TextFormFieldShape.RoundedBorder14,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray9007e,
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 24),
                                  shape: TextFormFieldShape.RoundedBorder14,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPasswor();
                                  },
                                  child: Padding(
                                      padding: getPadding(left: 2, top: 26),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold12
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.12))))),
                              CustomButton(
                                  height: 60,
                                  width: 311,
                                  text: "lbl_next".tr,
                                  margin: getMargin(top: 32),
                                  padding: ButtonPadding.PaddingAll20,
                                  fontStyle:
                                      ButtonFontStyle.PoppinsMedium14WhiteA700,
                                  onTap: onTapNext),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapRowconfirmation();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: Text(
                                                        "msg_don_t_have_an_a"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium12Gray9007e
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8, top: 1),
                                                    child: Text(
                                                        "lbl_signup2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12))))
                                              ]))))
                            ]))))));
  }

  onTapTxtForgotPasswor() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapNext() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapRowconfirmation() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
