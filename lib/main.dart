import 'package:clinic_app/core/di/dependency_injection.dart';
import 'package:clinic_app/core/helpers/constants.dart';
import 'package:clinic_app/core/helpers/shared_pref_helper.dart';
import 'package:clinic_app/core/routing/app_router.dart';
import 'package:clinic_app/doc_app.dart';
import 'package:clinic_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // --- الخطوة الناقصة هنا ---
  await checkIfLoggedInUser();
  // -----------------------
  // to fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}

// دالة التحقق
checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}


  // fastlane distribute 
  // for upload apk to firebase