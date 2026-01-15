import 'package:clinic_app/core/networking/api_constants.dart';
import 'package:clinic_app/features/login/data/models/login_request_body.dart';
import 'package:clinic_app/features/login/data/models/login_response.dart';
import 'package:clinic_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:clinic_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/error_logger.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}