import 'package:authentication_repository/entities/user_info_request/user_info_request_entity.dart';
import 'package:authentication_repository/entities/auth_response/auth_response_entity.dart';
import 'package:authentication_repository/repositories/authentication_repository.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:dio/dio.dart';

class _P {
  static const validatePhone = '/api/v1/auth/:phone';
  static const validateOTP = '/api/v1/auth/validate-otp';
  static const userStatus = '/api/v1/collaborator/get-info';
  static const submitUserInfo = '/api/v1/collaborator/submit-info';
  static const login = '/api/v1/collaborator/login-by-password';
  static const createPassword = '/api/v1/collaborator/create-password';
  static const sendOTP = 'api/v1/auth/verify-phone';
}

class AuthenticationClient extends APIProvider
    implements AuthenticationRepository {
  AuthenticationClient(
      {required NetworkConfigurable networkConfiguration,
      required StorageTokenProcessor storageTokenProcessor,
      Interceptor? interceptor})
      : super(
            networkConfiguration: networkConfiguration,
            storageTokenProcessor: storageTokenProcessor,
            interceptor: interceptor);

  String? checkError(Response<dynamic> response) {
    var error = response.data['code'] != 200;
    return error ? response.data['message'] : null;
  }

  @override
  Future<AuthResponseEntity> getUserStatus() async {
    var input =
        DefaultInputService(path: _P.userStatus, requestType: RequestType.get);
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return AuthResponseEntity.fromJson(response.data['data']);
    }
  }

  @override
  Future<AuthResponseEntity> login(
      {required String phone, required String password}) async {
    var input = DefaultInputService(
        path: _P.login,
        requestType: RequestType.post,
        queryParameters: {'phone': phone, 'password': password});
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return AuthResponseEntity.fromJson(response.data['data']);
    }
  }

  @override
  Future<AuthResponseEntity> submitUserInfo(UserInfoRequestEntity data) async {
    var input = DefaultInputService(
        path: _P.submitUserInfo,
        requestType: RequestType.post,
        queryParameters: data.toJson());
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return AuthResponseEntity.fromJson(response.data['data']);
    }
  }

  @override
  Future<AuthResponseEntity> validateOTP(
      {required String phone, required String otp}) async {
    var input = DefaultInputService(
        path: _P.validateOTP,
        requestType: RequestType.post,
        queryParameters: {'phone': phone, 'otp': otp});
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return AuthResponseEntity.fromJson(response.data['data']);
    }
  }

  @override
  Future<bool> validatePhone(String phonenNumber) async {
    var input = DefaultInputService(
        path: _P.validatePhone.replaceFirst(':phone', phonenNumber),
        requestType: RequestType.get);
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return response.data['data']['hasPassword'];
    }
  }

  @override
  Future<bool> createPassword(String password, {required String token}) async {
    var input = DefaultInputService(
        path: _P.createPassword,
        requestType: RequestType.post,
        headers: {'Authorization': 'Bearer $token'},
        queryParameters: {'password': password});
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return response.data['data'];
    }
  }

  @override
  Future<bool> sendOTP(String phone) async {
    var input = DefaultInputService(
        path: _P.sendOTP,
        requestType: RequestType.post,
        queryParameters: {'phone': phone});
    final response = await super.request(input: input);
    var error = checkError(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    } else {
      return response.data['data'];
    }
  }
}
