import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/features/home/ui/widgets/doctors_list/doctros_bloc_builder.dart';
import 'package:clinic_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:clinic_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:clinic_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:clinic_app/features/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            const DoctorsBlueContainer(),
            verticalSpace(24),
            const DoctorSpecialitySeeAll(),
            verticalSpace(18),
            const SpecializationsBlocBuilder(),
            verticalSpace(8),
            const DoctorsBlocBuilder(),
          ],
        ),
      );
  }
}
