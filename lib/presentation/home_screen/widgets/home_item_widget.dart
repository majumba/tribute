import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 28,
        top: 16,
        right: 28,
        bottom: 16,
      ),
      decoration: AppDecoration.fillDeeporange5000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLocation,
            height: getVerticalSize(
              18.00,
            ),
            width: getHorizontalSize(
              20.00,
            ),
            margin: getMargin(
              top: 4,
              bottom: 4,
            ),
          ),
          Spacer(
            flex: 45,
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "lbl_personality".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16,
            ),
          ),
          Spacer(
            flex: 54,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgStroke1DeepOrange500,
            height: getVerticalSize(
              6.00,
            ),
            width: getHorizontalSize(
              5.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                2.00,
              ),
            ),
            margin: getMargin(
              top: 10,
              right: 5,
              bottom: 10,
            ),
          ),
        ],
      ),
    );
  }
}
