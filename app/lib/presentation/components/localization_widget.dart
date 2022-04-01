import 'package:core/l10n/generated/intl/messages_all.dart' as core_msg;
import 'package:core/l10n/generated/l10n.dart' as core_l10;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_bloc/localization_bloc.dart';
import 'package:multiple_localization/multiple_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class LocalizationWidget extends StatelessWidget {
  final Widget? child;
  final Widget Function(BuildContext, LocalizationState)? builder;
  const LocalizationWidget({Key? key, this.child, this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder != null
        ? BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (context, state) => builder!(context, state))
        : BlocListener<LocalizationBloc, LocalizationState>(
            listener: (context, state) async {
              await loadLocalization(state.currentLocale);
            },
            child: child);
  }
}

Future<void> loadLocalization(Locale locale) async {
  await MultipleLocalizations.load(core_msg.initializeMessages, locale, (l) {},
      setDefaultLocale: true);
  // Other localization
}

Iterable<LocalizationsDelegate<dynamic>> localizations = [
  core_l10.S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
