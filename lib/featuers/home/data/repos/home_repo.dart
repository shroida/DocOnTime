import 'package:doc_on_time/core/networking/api_error_handler.dart';
import 'package:doc_on_time/core/networking/api_result.dart';
import 'package:doc_on_time/featuers/home/data/apis/home_api_service.dart';
import 'package:doc_on_time/featuers/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
