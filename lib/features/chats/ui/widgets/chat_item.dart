import 'package:clinic_app/core/helpers/extensions.dart';
import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: () {
      context.pushNamed(Routes.chatMessageScreen);
    },
     child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        child: Column(
          children: [
            Row(
              children: [
                // 1. الصورة المدورة على الشمال
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const AssetImage('assets/images/doctor_Image.png'),
                    ),
                    // نقطة خضراء (Online Status) لو حابب تدي شكل أحلى
                    CircleAvatar(
                      radius: 7.r,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 5.r,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                horizontalSpace(12),
                // 2. الاسم والرسالة الأخيرة (في النص)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Omar Ahmed',
                        style: TextStyles.font18DarkBlueSemiBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('General Doctor | RSUD Gatot Subroto'),
                      verticalSpace(6),
                      Text(
                        'How are you feeling today? please check the...',
                        style: TextStyles.font14GrayRegular,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                // 3. الوقت وعدد الرسائل (على اليمين)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '10:30 PM',
                      style: TextStyles.font12GrayRegular.copyWith(fontSize: 11.sp),
                    ),
                    verticalSpace(8),
                    // نوتفيكيشن بعدد الرسائل
                    Container(
                      padding: EdgeInsets.all(6.w),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CustomDivider(),
          ],
        ),
      ),
   );
  }
}