import 'package:dio/dio.dart';
import 'package:doc_on_time/core/networking/api_constants.dart';
import 'package:doc_on_time/featuers/home/data/apis/home_api_constatns.dart';
import 'package:doc_on_time/featuers/home/data/models/specializations_response_model.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl )

abstract class HomeApiService {
 factory HomeApiService(Dio dio) = _HomeApiService;

 @GET(HomeApiConstants.specializationEP) 
  Future<SpecializationsResponseModel> getSpecialization();

}