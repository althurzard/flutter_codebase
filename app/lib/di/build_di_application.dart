import 'package:core/configs/flavor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:core/core.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'dart:io';
import 'package:localization_bloc/localization_bloc.dart' as localization_bloc;
import 'package:authentication_bloc/authentication_bloc.dart'
    as authentication_bloc;

Future<void> initDIApplication() async {
  HttpOverrides.global = MyHttpOverrides();
  buildCoreDI();
  // Listener Authentication
  Loader.appLoader.hasAuthentication.addListener(() async =>
      _authenticationListener(Loader.appLoader.hasAuthentication.value));

  var storageTokenProcessor = await DefaultStorageTokenProcessor.create();

  // Access token is expired
  var session = storageTokenProcessor.getCurrentSessionInfo();
  if ((session?.accessToken.isNotEmpty ?? false) &&
      _tokenIsExpired(session!.accessToken)) {
    await storageTokenProcessor.removeAllSessionInfos();
  }
  getIt.registerLazySingleton<DefaultStorageTokenProcessor>(
      () => storageTokenProcessor);
  var appDomain = DefaultNetworkConfigurable(
    interceptor: InterceptorsWrapper(
        onRequest: _onRequest, onError: _onError, onResponse: _onResponse),
    baseURL: FlavorConfig.configs.baseUrl,
    headers: {
      'Content-Type': 'application/json',
    },
    encoding: 'application/json; charset=UTF-8',
  );
  if (session?.accessToken.isNotEmpty ?? false) {
    appDomain.headers = {
      ...appDomain.headers,
      'token': session!.accessToken,
    };
  }
  if (session?.accessToken.isNotEmpty ?? false) {
    appDomain.headers = {
      ...appDomain.headers,
      'Authorization': session!.accessToken
    };
  }

  localization_bloc.buildDI();
  authentication_bloc.buildDI(
      storageTokenProcessor: storageTokenProcessor,
      networkConfigurable: appDomain);

  getIt.registerLazySingleton<PersistentTabController>(
      () => PersistentTabController(initialIndex: 0));
}

void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  handler.next(options);
}

void _onError(DioError err, ErrorInterceptorHandler handler) {
  var message = err.response?.data?['message'];
  // token expries
  if (message is String && message.contains('token')) {
    _logout();
    handler.reject(err);
  } else {
    handler.next(err);
  }
}

void _onResponse(
    Response<dynamic> response, ResponseInterceptorHandler handler) {
  handler.next(response);
}

Future<void> _logout() async {
  await getIt.get<DefaultStorageTokenProcessor>().removeAllSessionInfos();
}

void _authenticationListener(bool hasLogin) async {
  if (hasLogin == false) {
    await _logout();
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        return true;
      });
  }
}

bool _tokenIsExpired(String token) {
  return true;
  // var payload = Jwt.parseJwt(token);
  // var exp = payload['exp'] as num;
  // var expired = DateTime.parse(exp.toString()).toUtc().toLocal();
  // var current = DateTime.now();
  // return expired.isBefore(current);
}
