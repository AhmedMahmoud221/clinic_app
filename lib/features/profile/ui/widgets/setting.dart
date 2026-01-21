import 'package:clinic_app/core/helpers/extensions.dart';
import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_appbar.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_divider.dart';
import 'package:clinic_app/features/profile/ui/widgets/setting_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CustomAppbar(title: 'Setting'),
            verticalSpace(30.h),
            
            SettingItems(
              icon: Icons.notifications_outlined, 
              tittle: 'Notification', 
              iconColor: const Color.fromARGB(255, 122, 122, 122),
              textColor: Colors.black,
            ),
            CustomDivider(),
            SettingItems(
              icon: Icons.messenger_outline, 
              tittle: 'FAQ', 
              iconColor: const Color.fromARGB(255, 122, 122, 122),
              textColor: Colors.black,
            ),
            CustomDivider(),
            SettingItems(
              icon: Icons.security_outlined, 
              tittle: 'Security', 
              iconColor: const Color.fromARGB(255, 122, 122, 122),
              textColor: Colors.black,
            ),
            CustomDivider(),
            SettingItems(
              icon: Icons.language_outlined, 
              tittle: 'Language', 
              iconColor: const Color.fromARGB(255, 122, 122, 122),
              textColor: Colors.black,
            ),
            CustomDivider(),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: SettingItems(
                icon: Icons.logout_outlined, 
                tittle: 'Logout',
                iconColor: Colors.red,
                textColor: Colors.red,
              ),
            ),
            CustomDivider(),
            
          ],
        ),
      ),
    );
  }
}