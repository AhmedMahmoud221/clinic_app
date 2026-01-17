import 'package:clinic_app/core/helpers/constants.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/shared_pref_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      // بنضيف الهيدرز الأساسية فقط هنا
      dio!.options.headers = {'Accept': 'application/json'};

      addDioInterceptor(); // استدعاء الانترسبتور
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // جلب التوكن من التخزين الآمن
          final token = await SharedPrefHelper.getSecuredString(
            SharedPrefKeys.userToken,
          );

          // إذا وجدنا توكن، نضيفه للهيدر فوراً قبل خروج الطلب
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
      ),
    );

    // الـ Logger لمراقبة الطلبات في الـ Console
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
