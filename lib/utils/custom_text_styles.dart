import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/utils/colors.dart';


abstract class CustomTextStyles {
  static TextStyle textFontSemiBold(
      {Color color = black,
      required double size,
      double letterSpacing = 0}) {
    return TextStyle(
        color: color,
        fontSize: size.sp,
        //  height: 1,
        letterSpacing: letterSpacing,
        // fontFamily: AppConstants.fontFamilyGilroy,
        fontWeight: FontWeight.w600);
  }

  static TextStyle textFontBold(
      {Color color = black,
      required double size,
      double letterSpacing = 0}) {
    return TextStyle(
        color: color,
        fontSize: size.sp,
        //  height: 1,
        letterSpacing: letterSpacing,
        // fontFamily: AppConstants.fontFamilyGilroy,
        fontWeight: FontWeight.w700);
  }

  static TextStyle textFontMedium(
      {Color color = black,
      required double size,
      double letterSpacing = 0,
      }) {
    return TextStyle(
        color: color,
        fontSize: size.sp,
        //  height: 1,
        letterSpacing: letterSpacing,
        // fontFamily: AppConstants.fontFamilyGilroy,
        fontWeight: FontWeight.w500);
  }

  static TextStyle textFontRegular(
      {Color color = black,
      required double size,
      weight = FontWeight.w400,
      double height = 1.4,
      double letterSpacing = 0}) {
    return TextStyle(
        color: color,
        fontSize: size.sp,
        height: height,
        letterSpacing: letterSpacing,
        // fontFamily: AppConstants.fontFamilyGilroy,
        fontWeight: weight);
  }


  static TextStyle textFontRegularOverFlow(
      {Color color = black,
        required double size,
        weight = FontWeight.w400,
        double height = 1.4,
        double letterSpacing = 0}) {
    return TextStyle(
        color: color,
        fontSize: size.sp,
        height: height,
        letterSpacing: letterSpacing,
        overflow: TextOverflow.ellipsis,
        // fontFamily: AppConstants.fontFamilyGilroy,
        fontWeight: weight);
  }

}
