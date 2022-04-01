import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository authenticationRepository;
  final StorageTokenProcessor storageTokenProcessor;
  final NetworkConfigurable domain;
  AuthenticationBloc(
      {required this.authenticationRepository,
      required this.storageTokenProcessor,
      required this.domain})
      : super(const AuthenticationState()) {
    on<InitStateEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      prefs.getBool('introductionScreen') ?? true;
      var hasLogin = storageTokenProcessor.getCurrentToken().isNotEmpty;
      if (hasLogin) {
        // get user info
      } else {}

      var newState = state.copyWith(
          showOnboardScreen: prefs.getBool('introductionScreen') ?? true,
          status: AuthenticationStatus.loaded);
      emit(newState);
      event.callback?.call(newState);
    });
    on<SkipOnboardScreenEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('introductionScreen', false);
      emit(state.copyWith(
          showOnboardScreen: false, status: AuthenticationStatus.loaded));
    });
    on<LoginEvent>((event, emit) async {
      try {
        var response = await authenticationRepository.login(
            phone: event.phone, password: event.password);
        if (response.token != null) {
          domain.headers = {
            ...domain.headers,
            'Authorization': 'Bearer ${response.token}'
          };
          var session = AuthSessionInfo(
              accessToken: response.token!, phoneNumber: event.phone);
          await storageTokenProcessor.save(sessionInfo: session);
        }
        event.callback?.call(response.status);
        emit(state.copyWith(authResponseEntity: response));
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<GetUserInfoEvent>((event, emit) async {
      try {
        var response = await authenticationRepository.getUserStatus();
        event.callback?.call(null);
        emit(state.copyWith(authResponseEntity: response));
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<ValidatePhoneEvent>((event, emit) async {
      try {
        var hasPassword =
            await authenticationRepository.validatePhone(event.phone);
        event.callback?.call(hasPassword);
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<RequestOTPEvent>((event, emit) async {
      try {
        var result = await authenticationRepository.sendOTP(event.phone);
        event.callback?.call(result);
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<ValidateOTPEvent>((event, emit) async {
      try {
        var response = await authenticationRepository.validateOTP(
            phone: event.phone, otp: event.otp);

        event.callback?.call(null);
        emit(state.copyWith(authResponseEntity: response));
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<SubmitUserInfoEvent>((event, emit) async {
      try {
        await authenticationRepository.submitUserInfo(event.data);
        event.callback?.call(null);
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<CreatePasswordEvent>((event, emit) async {
      try {
        var authToken = state.authResponseEntity?.token;
        if (authToken != null) {
          var result = await authenticationRepository
              .createPassword(event.password, token: authToken);
          var phone = state.authResponseEntity?.phone;
          if (result && phone != null) {
            domain.headers = {
              ...domain.headers,
              'Authorization': 'Bearer $authToken'
            };
            var session =
                AuthSessionInfo(accessToken: authToken, phoneNumber: phone);
            await storageTokenProcessor.save(sessionInfo: session);
          }
          event.callback?.call(result);
        } else {
          event.callback?.call('Token không tồn tại!');
        }
      } on AppError catch (e) {
        event.callback?.call(e.message);
      }
    });
    on<LogoutEvent>((event, emit) async {
      try {
        await storageTokenProcessor.removeAllSessionInfos();
        event.callback?.call(null);
      } catch (e) {
        event.callback?.call(e);
      }
    });
  }
}
