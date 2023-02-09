import 'controller/login_or_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/widgets/custom_button.dart';

class LoginOrSignupScreen extends GetWidget<LoginOrSignupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                padding: getPadding(left: 26, top: 21, right: 26, bottom: 21),
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
                                  width: getHorizontalSize(1.00)),
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(67.00),
                              padding: getPadding(
                                  left: 30, top: 26, right: 30, bottom: 26),
                              decoration: AppDecoration.outlineGray90063
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowicon,
                                    height: getVerticalSize(6.00),
                                    width: getHorizontalSize(4.00),
                                    alignment: Alignment.centerRight)
                              ]))),
                      Container(
                          width: getHorizontalSize(208.00),
                          margin: getMargin(left: 6, top: 23),
                          child: Text("msg_welcome_to_our".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold34)),
                      Container(
                          width: getHorizontalSize(281.00),
                          margin: getMargin(left: 6, top: 2),
                          child: Text("msg_our_community_i".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgLogoGray50,
                          height: getVerticalSize(105.00),
                          width: getHorizontalSize(117.00),
                          alignment: Alignment.center,
                          margin: getMargin(top: 31)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 33),
                              child: Text("lbl_get_in_through".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomButton(
                          height: 60,
                          width: 311,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(left: 6, top: 33),
                          fontStyle: ButtonFontStyle.PoppinsMedium14,
                          onTap: onTapSignup),
                      CustomButton(
                          height: 60,
                          width: 311,
                          text: "lbl_login".tr,
                          margin: getMargin(left: 6, top: 14, bottom: 5),
                          variant: ButtonVariant.FillDeeporange50063,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium14Deeporange500,
                          onTap: onTapLogin)
                    ]))));
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
