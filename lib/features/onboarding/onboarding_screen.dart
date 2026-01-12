import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/features/onboarding/widegets/doc_logo_and_name.dart';
import 'package:clinic_app/features/onboarding/widegets/doctor_image_and_text.dart';
import 'package:clinic_app/features/onboarding/widegets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h,),
                const DoctorImageAndText(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font11GreyW400,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h,),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}