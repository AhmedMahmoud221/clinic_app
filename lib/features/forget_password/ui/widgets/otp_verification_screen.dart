import 'package:clinic_app/core/helpers/extensions.dart';
import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/core/theming/colors.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OTP Verification', style: TextStyles.font24BlueBold,),
              verticalSpace(8),
              Text('Add a PIN number to make your account more secure and easy to sign in.', style: TextStyles.font14GrayRegular,),
              verticalSpace(24),
              Pinput(
                length: 4, // عدد الأرقام
                defaultPinTheme: PinTheme(
                  width: 75.w,
                  height: 75 .h,
                  textStyle: TextStyles.font24BlueBold,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorsManager.lightGray),
                    color: ColorsManager.moreLightGray,
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorsManager.mainBlue),
                  ),
                ),
                onCompleted: (pin) => print(pin), // هتعمل إيه لما المستخدم يخلص الـ 4 أرقام
              ),
              Spacer(),
              AppTextButton(
                buttonText: 'Submit ', 
                backgroundColor: Colors.blue,
                textStyle: TextStyles.font16WhiteSemiBold, 
                onPressed: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}