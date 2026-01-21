import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/features/profile/ui/widgets/blue_section.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_divider.dart';
import 'package:clinic_app/features/profile/ui/widgets/profile_image.dart';
import 'package:clinic_app/features/profile/ui/widgets/profile_menu_item.dart';
import 'package:clinic_app/features/profile/ui/widgets/white_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              BlueSection(),
              WhiteSection(),
              ProfileImage(),
            ],
          ),
          verticalSpace(40), 
          Text('Omar Ahmed', style: TextStyles.font18DarkBlueBold),
          verticalSpace(4),
          Text('omarahmed14@gmail.com', style: TextStyles.font14GrayRegular),
          verticalSpace(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                const ProfileMenuItem(
                  title: 'Personal Information',
                  icon: Icons.badge_outlined,
                  iconColor: Colors.blue,
                  backgroundColor: Color(0xFFE3F2FD),
                ),
                CustomDivider(),
                const ProfileMenuItem(
                  title: 'My Test & Diagnostic',
                  icon: Icons.assignment_outlined,
                  iconColor: Colors.green,
                  backgroundColor: Color(0xFFE8F5E9),
                ),
                CustomDivider(),
                const ProfileMenuItem(
                  title: 'Payment',
                  icon: Icons.account_balance_wallet_outlined,
                  iconColor: Colors.redAccent,
                  backgroundColor: Color(0xFFFFEBEE),
                ),
                CustomDivider(),
              ],
            ),
          ),
          verticalSpace(100),
        ],
      ),
    );
  }
}
