import '../controller/work_today_controller.dart';
import '../models/work_today_item_model.dart';
import 'package:flutter/material.dart';
import 'package:steve_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class WorkTodayItemWidget extends StatelessWidget {
  WorkTodayItemWidget(this.workTodayItemModelObj);

  WorkTodayItemModel workTodayItemModelObj;

  var controller = Get.find<WorkTodayController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 15,
        bottom: 15,
      ),
      decoration: AppDecoration.fillWhiteA7007e,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getVerticalSize(
              26.00,
            ),
            width: getHorizontalSize(
              28.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.deepOrange5006c,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  6.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 2,
            ),
            child: Text(
              "msg_research_produc".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgArrowiconDeepOrange500,
            height: getVerticalSize(
              5.00,
            ),
            width: getHorizontalSize(
              3.00,
            ),
            margin: getMargin(
              top: 10,
              bottom: 10,
            ),
          ),
        ],
      ),
    );
  }
}
