import 'package:clinic_app/core/helpers/spacing.dart';
import 'package:clinic_app/features/chats/ui/chat_screen.dart';
import 'package:clinic_app/features/dates/ui/date_screen.dart';
import 'package:clinic_app/features/home/ui/home_screen.dart';
import 'package:clinic_app/features/profile/ui/profile_screen.dart';
import 'package:clinic_app/features/search/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ChatScreen(),
    const DateScreen(),
    const ProfileScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      ),

      floatingActionButton: Transform.translate(
        offset: const Offset(0, -5), 
        child: SizedBox(
          width: 60.w,
          height: 60.h,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            backgroundColor: Colors.blue,
            elevation: 4,
            onPressed: () {
              setState(() {
                currentIndex = 4;
              });
            },
            child: const Icon(Icons.search, color: Colors.white, size: 40),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        height: 55.h, 
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.home_work, size: 30, color: currentIndex == 0 ? Colors.blue : Colors.grey),
                    onPressed: () => setState(() => currentIndex = 0),
                  ),
                  horizontalSpace(20),
                  IconButton(
                    icon: Icon(Icons.chat_bubble, size: 30, color: currentIndex == 1 ? Colors.blue : Colors.grey),
                    onPressed: () => setState(() => currentIndex = 1),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.calendar_month, size: 30, color: currentIndex == 2 ? Colors.blue : Colors.grey),
                    onPressed: () => setState(() => currentIndex = 2),
                  ),
                  horizontalSpace(20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: CircleAvatar(
                      radius: 19,
                      backgroundImage: AssetImage('assets/images/onboarding_doctor.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}