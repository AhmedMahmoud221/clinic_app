import 'package:clinic_app/core/helpers/extensions.dart';
import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/core/widgets/app_text_button.dart';
import 'package:clinic_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forget Password', style: TextStyles.font24BlueBold,),
              verticalSpace(8),
              Text('At our app, we take the security of your information seriously.', style: TextStyles.font14GrayRegular,),
              verticalSpace(24),
              AppTextFormField(
                hintText: 'Email or Phone Number',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'خانة البريد الإلكتروني مطلوبة';
                  }
                  if (!value.contains('@')) {
                    return 'برجاء إدخال بريد إلكتروني صحيح'; 
                  }
                  return null;
                },
              ),
              Spacer(),
              AppTextButton(
                buttonText: 'Reset Password', 
                backgroundColor: Colors.blue,
                textStyle: TextStyles.font16WhiteSemiBold, 
                onPressed: () {
                  context.pushReplacementNamed(Routes.optVerification);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}