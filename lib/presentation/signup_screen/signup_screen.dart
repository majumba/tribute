import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/widgets/app_bar/appbar_stack.dart';
import 'package:steve_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:steve_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:steve_s_application5/widgets/custom_button.dart';
import 'package:steve_s_application5/widgets/custom_text_form_field.dart';

class SignupScreen extends GetWidget<SignupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 95,
                leading: AppbarStack(margin: getMargin(left: 28)),
                title: AppbarTitle(
                    text: "lbl_sign_up".tr, margin: getMargin(left: 165))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 28, top: 27, right: 36, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(218.00),
                                  child: Text("msg_when_community".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold34)),
                              Container(
                                  width: getHorizontalSize(245.00),
                                  child: Text("msg_our_community_i3".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Black9007e
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLogoGray50120x114,
                                  height: getVerticalSize(120.00),
                                  width: getHorizontalSize(114.00),
                                  alignment: Alignment.center,
                                  margin: getMargin(top: 12)),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.firstnameController,
                                  hintText: "lbl_first_name2".tr,
                                  margin: getMargin(top: 96)),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.lastnameController,
                                  hintText: "lbl_last_name2".tr,
                                  margin: getMargin(top: 24)),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "lbl_e_mail2".tr,
                                  margin: getMargin(top: 24),
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 24),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              Container(
                                  width: getHorizontalSize(248.00),
                                  margin: getMargin(left: 1, top: 22),
                                  child: Text("msg_lorem_ipsum_dol".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomButton(
                                  height: 60,
                                  width: 311,
                                  text: "lbl_next".tr,
                                  margin: getMargin(top: 30),
                                  fontStyle:
                                      ButtonFontStyle.PoppinsMedium14WhiteA700,
                                  onTap: onTapNext)
                            ])))),
            bottomNavigationBar: GestureDetector(
                onTap: () {
                  onTapAlreadyhavean();
                },
                child: Padding(
                    padding: getPadding(left: 86, right: 85, bottom: 18),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("msg_already_have_an".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12))),
                          Padding(
                              padding: getPadding(left: 8),
                              child: Text("lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12.copyWith(
                                      letterSpacing: getHorizontalSize(0.12))))
                        ])))));
  }

  onTapNext() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
