import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(
              start: index ==0 ? 0 : 24.w
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey,
                  child: SvgPicture.asset(
                    'assets/images/ManDoctorEurope.png',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                const SizedBox(height: 8.0),
                Text(
                  'Specialization',
                  style: TextStyles.font12DarkBlueRegular,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}