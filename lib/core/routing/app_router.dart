import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/features/login/ui/widgets/login_screen.dart';
import 'package:clinic_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    // this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = setting.arguments;
    
    switch(setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${setting.name}'),
            ),
          ),
        );    
    }
  }
}