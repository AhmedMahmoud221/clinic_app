import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // تحديد الحجم هنا يجبر الـ Image Provider على البقاء داخل الصندوق
          // استبدال كود الـ CachedNetworkImage بهذا الكود
          Container(
            width: 110.w,
            height: 120.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                // تأكد من إضافة المسار الصحيح للصورة في pubspec.yaml
                image: AssetImage('assets/images/doctor_Image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                verticalSpace(5),
                Text(
                  // تأكد من تغليف النصوص بـ Expanded (موجود بالفعل)
                  // واستخدام ellipsis لكل النصوص
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildShimmerLoading() {
  //   return Shimmer.fromColors(
  //     baseColor: ColorsManager.lightGray,
  //     highlightColor: Colors.white,
  //     child: Container(
  //       width: 110.w,
  //       height: 120.h,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(12.0),
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }
}
