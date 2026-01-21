import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100.h,
      child: CircleAvatar(
        radius: 60.r,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 55.r,
          backgroundImage: const AssetImage('assets/images/doctor_Image.png'),
        ),
      ),
    );
  }
}