import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItems extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final Color iconColor;
  final Color textColor;
  const SettingItems({super.key, required this.icon, required this.tittle, required this.iconColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 24.sp),
          horizontalSpace(10),
          Expanded(child: Text(tittle, style: TextStyles.font14GrayRegular.copyWith(color: textColor),)),
          Icon(Icons.keyboard_arrow_right_outlined, size: 28,),
        ],
      ),
    );
  }
}