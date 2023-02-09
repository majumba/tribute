import 'package:flutter/material.dart';
import 'package:tribute/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillDeeppurpleA4000c => BoxDecoration(
        color: ColorConstant.deepPurpleA4000c,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillDeeporange5000c => BoxDecoration(
        color: ColorConstant.deepOrange5000c,
      );
  static BoxDecoration get outlineGray9005e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray9005e,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillLightblue4000c => BoxDecoration(
        color: ColorConstant.lightBlue4000c,
      );
  static BoxDecoration get outlineGray90063 => BoxDecoration(
        color: ColorConstant.gray5063,
        border: Border.all(
          color: ColorConstant.gray90063,
          width: getHorizontalSize(
            1.00,
          ),
          strokeAlign: StrokeAlign.center,
        ),
      );
  static BoxDecoration get outlineGray9006c => BoxDecoration();
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillWhiteA7007e => BoxDecoration(
        color: ColorConstant.whiteA7007e,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14.00,
    ),
  );

  static BorderRadius roundedBorder69 = BorderRadius.circular(
    getHorizontalSize(
      69.00,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2.00,
    ),
  );
}
