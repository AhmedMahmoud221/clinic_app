import 'package:clinic_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      }, 
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.blue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 56)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )
        )

      ),
      child:
        Text('Get Started',
          style: TextStyles.font16GreySemiBold,
        ) 
    );
  }
}