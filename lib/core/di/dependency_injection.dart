import 'package:dio/dio.dart';
import 'package:doctor_appotmnet/core/networking/api_service.dart';
import 'package:doctor_appotmnet/core/networking/dio_factory.dart';
import 'package:doctor_appotmnet/features/login/data/repos/login_repo.dart';
import 'package:doctor_appotmnet/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
