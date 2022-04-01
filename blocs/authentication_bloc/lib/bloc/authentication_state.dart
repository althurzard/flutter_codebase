part of 'authentication_bloc.dart';

enum AuthenticationStatus { initital, loaded }

class AuthenticationState {
  final AuthenticationStatus status;
  final AuthResponseEntity? authResponseEntity;
  final bool showOnboardScreen;
  const AuthenticationState(
      {this.authResponseEntity,
      this.showOnboardScreen = true,
      this.status = AuthenticationStatus.initital});

  AuthenticationState copyWith(
      {AuthResponseEntity? authResponseEntity,
      bool? showOnboardScreen,
      AuthenticationStatus? status}) {
    return AuthenticationState(
        authResponseEntity: authResponseEntity ?? this.authResponseEntity,
        showOnboardScreen: showOnboardScreen ?? this.showOnboardScreen,
        status: status ?? this.status);
  }
}
