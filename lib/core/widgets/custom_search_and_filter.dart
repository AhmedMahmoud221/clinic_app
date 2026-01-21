import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchAndFilter extends StatelessWidget {
  final String tittle;
  const CustomSearchAndFilter({
    super.key, required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xFFF2F4F7),
              hintText: tittle,
              hintStyle: TextStyles.font14GrayRegular,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Color(0xFFEDEDED)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
        horizontalSpace(12),
        GestureDetector(
          onTap: () {
            // Logic بتاع الفلتر
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              Icons.tune,
              color: Colors.grey[800],
              size: 24.sp,
            ),
          ),
        ),
      ],
    );
  }
}