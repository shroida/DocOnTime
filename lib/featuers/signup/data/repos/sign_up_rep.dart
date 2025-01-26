import 'package:doc_on_time/core/networking/api_error_handler.dart';
import 'package:doc_on_time/core/networking/api_result.dart';
import 'package:doc_on_time/core/networking/api_service.dart';
import 'package:doc_on_time/featuers/signup/data/models/sign_up_request_body.dart';
import 'package:doc_on_time/featuers/signup/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
