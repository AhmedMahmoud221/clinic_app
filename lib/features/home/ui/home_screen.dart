import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:clinic_app/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:clinic_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:clinic_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:clinic_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16.h),
              const DoctorSpecialitySeeAll(),
              const DoctorSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}