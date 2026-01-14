import 'package:clinic_app/core/theming/colors.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField({super.key, this.focusedBorder, this.enabledBorder, this.inputTextStyle, this.hintStyle, required this.hintText, this.isObscureText, this.suffixIcon, this.contentPadding, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorsManger.mainBlue,
            width: 1.3,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: ColorsManger.lightGrey,
            width: 1.3,
          ),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? ColorsManger.moreLightGrey,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium.copyWith(
        color: Colors.black,
      ),
    );
  }
}