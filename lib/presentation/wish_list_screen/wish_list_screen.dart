import 'controller/wish_list_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';
import 'package:tribute/widgets/custom_button.dart';

class WishListScreen extends GetWidget<WishListController> {
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
            top: 42,
            right: 32,
            bottom: 42,
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
                  top: 40,
                ),
                child: Text(
                  "msg_make_a_wish_lis".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold28,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "msg_make_your_job_e".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 85,
                ),
                child: Text(
                  "lbl_task_todo".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12Gray9008b.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 12,
                ),
                padding: getPadding(
                  left: 18,
                  top: 17,
                  right: 18,
                  bottom: 17,
                ),
                decoration: AppDecoration.outlineGray9005e.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCalendar23x24,
                      height: getVerticalSize(
                        23.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 18,
                        top: 1,
                        right: 85,
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_create_action_m".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray90090,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "lbl_date".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12Gray9008b.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 12,
                ),
                padding: getPadding(
                  left: 18,
                  top: 17,
                  right: 18,
                  bottom: 17,
                ),
                decoration: AppDecoration.outlineGray9005e.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCalendar,
                      height: getVerticalSize(
                        23.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 18,
                        top: 1,
                        right: 162,
                      ),
                      child: Text(
                        "lbl_tt_mm_yy".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray90090,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "lbl_attachments".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12Gray9008b.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 12,
                ),
                decoration: AppDecoration.outlineGray9006c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: DottedBorder(
                  color: ColorConstant.gray9006c,
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      1.00,
                    ),
                    top: getVerticalSize(
                      1.00,
                    ),
                    right: getHorizontalSize(
                      1.00,
                    ),
                    bottom: getVerticalSize(
                      1.00,
                    ),
                  ),
                  strokeWidth: getHorizontalSize(
                    1.00,
                  ),
                  radius: Radius.circular(
                    14,
                  ),
                  borderType: BorderType.RRect,
                  dashPattern: [
                    5,
                    2,
                  ],
                  child: Padding(
                    padding: getPadding(
                      left: 18,
                      top: 17,
                      right: 18,
                      bottom: 17,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgInfo,
                          height: getVerticalSize(
                            23.00,
                          ),
                          width: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 1,
                            right: 114,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_maximum_10_mb".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14Gray90090,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 58,
                width: 311,
                text: "msg_make_a_wish_lis".tr,
                margin: getMargin(
                  top: 35,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
