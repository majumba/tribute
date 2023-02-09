import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
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
      ),
    );
  }
}
