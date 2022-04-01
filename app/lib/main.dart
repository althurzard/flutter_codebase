import 'package:app/presentation/components/localization_widget.dart';
import 'package:core/configs/flavor.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_bloc/localization_bloc.dart';
import 'app.dart';
import 'di/build_di_application.dart';
import 'firebase/firebase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authentication_bloc/authentication_bloc.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      FlutterServicesBinding.ensureInitialized();
      await initFirebase();
      setFlavorEnvironment(Flavor.dev);
      await initDIApplication();
      final localizationBloc = await getIt.getAsync<LocalizationBloc>();
      await loadLocalization(localizationBloc.state.currentLocale);
      return runApp(MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => localizationBloc,
            child: Container(),
          ),
          BlocProvider(
            create: (context) => getIt.get<AuthenticationBloc>(),
            child: Container(),
          )
        ],
        child: const App(),
      ));
    },
    blocObserver: SimpleBlocDelegate(),
  );
}

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debug(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debug(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debug(error);
  }
}
