import 'package:dio/dio.dart';
import 'package:doc_on_time/core/networking/api_constants.dart';
import 'package:doc_on_time/featuers/login/data/models/login_request_body.dart';
import 'package:doc_on_time/featuers/login/data/models/login_response.dart';
import 'package:doc_on_time/featuers/signup/data/models/sign_up_request_body.dart';
import 'package:doc_on_time/featuers/signup/data/models/sign_up_response.dart';
import 'package:retrofit/http.dart';
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
