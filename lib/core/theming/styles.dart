
import 'package:clinic_app/core/theming/colors.dart';
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

  static TextStyle font11GreyW400 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManger.grey,
  );

  static TextStyle font16GreySemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}