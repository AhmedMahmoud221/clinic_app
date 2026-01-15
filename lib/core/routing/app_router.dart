import 'package:clinic_app/core/di/dependency_injection.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/features/home/ui/home_screen.dart';
import 'package:clinic_app/features/login/logic/cubit/login_cubit.dart';
import 'package:clinic_app/features/login/ui/login_screen.dart';
import 'package:clinic_app/features/onboarding/onboarding_screen.dart';
import 'package:clinic_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:clinic_app/features/sign_up/ui/sign_up_screen.dart';
// import 'package:clinic_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    // this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = setting.arguments;

    switch (setting.name) {
      // case Routes.splashScreen: // ضيف الحالة دي
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${setting.name}')),
          ),
        );
    }
  }
}
