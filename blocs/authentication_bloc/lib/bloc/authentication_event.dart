part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class GetUserInfoEvent extends AuthenticationEvent {
  final ValueSetter<dynamic>? callback;
  GetUserInfoEvent({this.callback});
}

class LoginEvent extends AuthenticationEvent {
  final String phone;
  final String password;
  final ValueSetter<dynamic>? callback;
  LoginEvent({this.callback, required this.phone, required this.password});
}

class ValidatePhoneEvent extends AuthenticationEvent {
  final String phone;
  final ValueSetter<dynamic>? callback;
  ValidatePhoneEvent({this.callback, required this.phone});
}

class ValidateOTPEvent extends AuthenticationEvent {
  final String phone;
  final String otp;
  final ValueSetter<dynamic>? callback;
  ValidateOTPEvent({this.callback, required this.phone, required this.otp});
}

class RequestOTPEvent extends AuthenticationEvent {
  final String phone;
  final ValueSetter<dynamic>? callback;
  RequestOTPEvent({this.callback, required this.phone});
}

class CreatePasswordEvent extends AuthenticationEvent {
  final String password;
  final ValueSetter<dynamic>? callback;
  CreatePasswordEvent({this.callback, required this.password});
}

class SubmitUserInfoEvent extends AuthenticationEvent {
  final UserInfoRequestEntity data;
  final ValueSetter<dynamic>? callback;
  SubmitUserInfoEvent({this.callback, required this.data});
}

class InitStateEvent extends AuthenticationEvent {
  final ValueSetter<AuthenticationState>? callback;
  InitStateEvent({this.callback});
}

class LogoutEvent extends AuthenticationEvent {
  final ValueSetter<dynamic>? callback;
  LogoutEvent({this.callback});
}

class SkipOnboardScreenEvent extends AuthenticationEvent {
  SkipOnboardScreenEvent();
}
