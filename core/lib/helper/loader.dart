import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Loader {
  static final Loader appLoader = Loader();
  ValueNotifier<bool> loading = ValueNotifier(false);
  ValueNotifier<bool> initial = ValueNotifier(true);
  ValueNotifier<bool> lockingScreen = ValueNotifier(false);
  ValueNotifier<bool> hasAuthentication = ValueNotifier(false);
  ValueNotifier<bool> connectionStatus = ValueNotifier(true);
  void showLoading(bool show) {
    loading.value = show;
  }

  void showInitial(bool show) {
    initial.value = show;
  }

  void lockScreen(bool lock) {
    lockingScreen.value = lock;
  }

  void triggerAuth(bool auth) {
    hasAuthentication.value = auth;
  }

  void setConnectionStatus(bool status) {
    connectionStatus.value = status;
  }
}
