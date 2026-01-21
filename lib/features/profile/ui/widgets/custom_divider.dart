import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: Colors.grey[100],
      thickness: 1.5,
      height: 20.h,
      indent: 28, // المسافة بين العناصر
    );
  }
}