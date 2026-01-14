
import 'package:clinic_app/core/theming/colors.dart';
import 'package:clinic_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font36Black700weight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: Color(0xFF242424),
  );

  static TextStyle font42BlueBold = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.grey,
  );

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.grey,
  );

  static TextStyle font14LightGreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.lightGrey,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManger.darkBlue,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManger.darkBlue,
  );

  static TextStyle font11GreyW400 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManger.grey,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font16GreySemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.darkBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManger.mainBlue
  );
}