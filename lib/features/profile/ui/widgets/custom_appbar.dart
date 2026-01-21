import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,  
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(4.w),
          child: GestureDetector(
            onTap: () => Navigator.pop(context), 
            child: Container( 
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!, 
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 18.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyles.font18DarkBlueBold,
        ),
      );
  }
}