import 'package:authentication_repository/entities/auth_response/auth_response_entity.dart';
import 'package:authentication_repository/entities/user_info_request/user_info_request_entity.dart';

abstract class AuthenticationRepository {
  Future<bool> validatePhone(String phonenNumber);
  Future<bool> sendOTP(String phone);
  Future<AuthResponseEntity> validateOTP(
      {required String phone, required String otp});
  Future<AuthResponseEntity> getUserStatus();
  Future<AuthResponseEntity> submitUserInfo(UserInfoRequestEntity data);
  Future<AuthResponseEntity> login(
      {required String phone, required String password});
  Future<bool> createPassword(String password, {required String token});
}
