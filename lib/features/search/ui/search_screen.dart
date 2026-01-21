import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/theming/styles.dart';
import 'package:clinic_app/core/widgets/custom_search_and_filter.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        children: [
          CustomAppbar(title: 'Search'),
          verticalSpace(25),
          CustomSearchAndFilter(tittle: 'Search',),
          verticalSpace(25),
          // Recent Search & Clear All History
          Row(
            children: [
              Text('Recent Search', style: TextStyles.font18DarkBlueSemiBold,),
              Spacer(),
              Text('Clear All History', style: TextStyles.font13BlueRegular,)
            ],
          ),
          verticalSpace(18),
          Column(
            children: [
              recentSearch(),
              verticalSpace(12),
              recentSearch(),
              verticalSpace(12),
              recentSearch(),
              verticalSpace(12),
              recentSearch(),
            ],
          ),
        ],
      ),
    );
  }

  Row recentSearch() {
    return Row(
      children: [
        horizontalSpace(8),
        Icon(Icons.alarm, color: Colors.grey,),
        horizontalSpace(8),
        Text('Doctor Name', style: TextStyles.font13GrayRegular,),
        Spacer(),
        Icon(Icons.close, size: 22, color: Colors.grey,),
        horizontalSpace(8)
      ],
    );
  } 
}