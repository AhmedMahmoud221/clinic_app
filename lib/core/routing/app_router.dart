import 'package:clinic_app/core/di/dependency_injection.dart';
import 'package:clinic_app/core/routing/routes.dart';
import 'package:clinic_app/features/chats/ui/chat_screen.dart';
import 'package:clinic_app/features/chats/ui/widgets/chat_message_screen.dart';
import 'package:clinic_app/features/dates/ui/date_screen.dart';
import 'package:clinic_app/features/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:clinic_app/features/forget_password/ui/forget_password_screen.dart';
import 'package:clinic_app/features/forget_password/ui/widgets/otp_verification_screen.dart';
import 'package:clinic_app/features/home/logic/home_cubit.dart';
import 'package:clinic_app/features/home/ui/home_screen.dart';
import 'package:clinic_app/features/home/ui/mainLayoutScreen.dart';
import 'package:clinic_app/features/login/logic/cubit/login_cubit.dart';
import 'package:clinic_app/features/login/ui/login_screen.dart';
import 'package:clinic_app/features/onboarding/onboarding_screen.dart';
import 'package:clinic_app/features/profile/ui/profile_screen.dart';
import 'package:clinic_app/features/profile/ui/widgets/setting.dart';
import 'package:clinic_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:clinic_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
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
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgetPasswordCubit(),
            child: const ForgetPasswordScreen(),
          ),
        );
      case Routes.optVerification:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgetPasswordCubit(),
            child: const OtpVerificationScreen(),
          ),
        );
      case Routes.mainLayoutScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const MainLayoutScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const ChatScreen(),
          ),
        );
      case Routes.dateScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const DateScreen(),
          ),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const ProfileScreen(),
          ),
        );
      case Routes.setting:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const Setting(),
          ),
        );
      case Routes.chatMessageScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const ChatMessagesScreen(userName: '',),
          ),
        );
      default:
        return null;
    }
  }
}
