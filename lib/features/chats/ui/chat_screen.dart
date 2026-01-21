import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/core/widgets/custom_search_and_filter.dart';
import 'package:clinic_app/features/chats/ui/widgets/chat_item.dart';
import 'package:clinic_app/features/profile/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          children: [
            CustomAppbar(title: 'Message'), 
            verticalSpace(25),
            CustomSearchAndFilter(tittle: 'Search Message',),
            verticalSpace(20),
            ChatItem(),
            ChatItem(), 
            ChatItem(),
          ],
        ),
      ),
    );
  }
}
