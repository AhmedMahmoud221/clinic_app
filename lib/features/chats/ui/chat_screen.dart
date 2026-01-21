import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ChatScreen', style: TextStyles.font28BlackBold,),
    );
  }
}