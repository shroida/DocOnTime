import 'package:dio/dio.dart';
import 'package:doc_on_time/core/networking/api_service.dart';
import 'package:doc_on_time/core/networking/dio_factory.dart';
import 'package:doc_on_time/featuers/login/data/repos/login_repo.dart';
import 'package:doc_on_time/featuers/login/logic/login_cubit.dart';
import 'package:doc_on_time/featuers/signup/data/repos/sign_up_rep.dart';
import 'package:doc_on_time/featuers/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
 
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio)); 
  
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt())); 
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt())); 
 
  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt())); 
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt())); 



}
