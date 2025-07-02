import 'package:dio/dio.dart';
import 'package:doctor_appotmnet/core/networking/api_service.dart';
import 'package:doctor_appotmnet/core/networking/dio_factory.dart';
import 'package:doctor_appotmnet/features/login/data/repos/login_repo.dart';
import 'package:doctor_appotmnet/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appotmnet/features/signup/data/repos/sign_up_repo.dart';
import 'package:doctor_appotmnet/features/signup/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}

// registerFactory ت    ستخدم لإنشاء كائن جديد في كل مرة يتم فيها طلبه
// registerLazySingleton تستخدم لإنشاء كائن واحد فقط يتم مشاركته في جميع أنحاء التطبيق
