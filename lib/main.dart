import 'package:clinic_app/core/di/dependency_injection.dart';
import 'package:clinic_app/core/routing/app_router.dart';
import 'package:clinic_app/doc_app.dart';
import 'package:clinic_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // to fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}


  // fastlane distribute 
  // for upload apk to firebase