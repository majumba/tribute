import 'controller/personality_controller.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:steve_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:steve_s_application5/widgets/custom_button.dart';
import 'package:steve_s_application5/widgets/custom_icon_button.dart';
import 'package:steve_s_application5/widgets/custom_text_form_field.dart';

class PersonalityScreen extends GetWidget<PersonalityController> {
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
                leadingWidth: 92,
                leading: CustomIconButton(
                    height: 60,
                    width: 60,
                    margin: getMargin(left: 32),
                    variant: IconButtonVariant.OutlineGray90063,
                    child: CustomImageView(svgPath: ImageConstant.imgBack)),
                title: AppbarTitle(
                    text: "lbl_personality".tr, margin: getMargin(left: 148))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 32, top: 19, right: 32, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgProfileimage,
                                  height: getSize(139.00),
                                  width: getSize(139.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(69.00)),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 18),
                                      child: Text("lbl_edit_photo".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium12Deeporange500a2
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.12))))),
                              Padding(
                                  padding: getPadding(top: 50),
                                  child: Text("lbl_username".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.usernameOneController,
                                  hintText: "lbl_adalahalcana".tr,
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.firstnameOneController,
                                  hintText: "lbl_alcanasatre".tr,
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.lastnameOneController,
                                  hintText: "lbl_fourta".tr,
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_hobby".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.hobbyOneController,
                                  hintText: "lbl_sleep".tr,
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_1),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_date_of_birth".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium12Gray9007e
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.priceController,
                                  hintText: "lbl_28_may_2002".tr,
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_1),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_country".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.countryOneController,
                                  hintText: "lbl_indonesian2".tr,
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2,
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  height: 60,
                                  width: 311,
                                  text: "lbl_change_save".tr,
                                  margin: getMargin(top: 34),
                                  onTap: onTapChangesave)
                            ]))))));
  }

  onTapChangesave() {
    Get.toNamed(AppRoutes.workTodayScreen);
  }
}
