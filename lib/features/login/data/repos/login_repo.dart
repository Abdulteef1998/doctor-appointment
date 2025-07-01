import 'package:doctor_appotmnet/core/networking/api_error_handler.dart';
import 'package:doctor_appotmnet/core/networking/api_result.dart';
import 'package:doctor_appotmnet/core/networking/api_service.dart';
import 'package:doctor_appotmnet/features/login/data/models/login_requset_body.dart';
import 'package:doctor_appotmnet/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequsetBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.logIn(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
