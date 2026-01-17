import 'package:clinic_app/core/helpers/constants.dart';
import 'package:clinic_app/core/helpers/shared_pref_helper.dart';
import 'package:clinic_app/core/networking/api_result.dart';
import 'package:clinic_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinic_app/features/login/data/repos/login_repo.dart';
import 'package:clinic_app/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) async {
        // 1. حفظ التوكن أولاً بشكل آمن
        await saveUserToken(loginResponse.userData?.token ?? '');
        // 2. بعد الحفظ، نرسل حالة النجاح
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  // دالة مساعدة داخل الكيوبيت لحفظ التوكن
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }
}
