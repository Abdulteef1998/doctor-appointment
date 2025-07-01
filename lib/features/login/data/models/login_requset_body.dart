import 'package:json_annotation/json_annotation.dart';

part 'login_requset_body.g.dart';

@JsonSerializable()
class LoginRequsetBody {
  final String email;
  final String password;

  LoginRequsetBody({required this.email, required this.password});
  Map<String, dynamic> toJson() => _$LoginRequsetBodyToJson(this);
}
