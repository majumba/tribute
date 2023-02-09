import '../work_today_screen/widgets/work_today_item_widget.dart';
import 'controller/work_today_controller.dart';
import 'models/work_today_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';
import 'package:tribute/widgets/custom_button.dart';
import 'package:tribute/widgets/custom_icon_button.dart';

class WorkTodayScreen extends GetWidget<WorkTodayController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 32, top: 43, right: 32, bottom: 43),
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
                      Padding(
                          padding: getPadding(top: 43),
                          child: Text("lbl_work_today_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_make_your_job_e".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Padding(
                          padding: getPadding(top: 78),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 6, bottom: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_today".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium14),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "lbl_02_april_2021".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16))
                                        ])),
                                CustomIconButton(
                                    height: 58,
                                    width: 60,
                                    variant: IconButtonVariant.FillTeal4005e,
                                    padding: IconButtonPadding.PaddingAll17,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar))
                              ])),
                      Padding(
                          padding: getPadding(top: 59),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(5.00));
                              },
                              itemCount: controller.workTodayModelObj.value
                                  .workTodayItemList.length,
                              itemBuilder: (context, index) {
                                WorkTodayItemModel model = controller
                                    .workTodayModelObj
                                    .value
                                    .workTodayItemList[index];
                                return WorkTodayItemWidget(model);
                              }))),
                      CustomButton(
                          height: 60,
                          width: 311,
                          text: "msg_make_a_wish_lis".tr,
                          margin: getMargin(top: 63, bottom: 5),
                          onTap: onTapMakeawishlistTwo)
                    ]))));
  }

  onTapMakeawishlistTwo() {
    Get.toNamed(AppRoutes.wishListScreen);
  }
}
