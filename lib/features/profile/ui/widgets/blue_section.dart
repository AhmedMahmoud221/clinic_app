import 'package:clinic_app/core/helpers/extensions.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueSection extends StatelessWidget {
  const BlueSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 45.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.arrow_back_ios, color: Colors.white),
            Text('Profile', style: TextStyles.font18WhiteMedium),
            IconButton(
              onPressed: () {
                context.pushNamed(Routes.setting);
              }, 
              icon: Icon(
                Icons.settings_outlined, 
                size: 28, 
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}