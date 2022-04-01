import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'localization_state.dart';
part 'localization_event.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc({Language language = Language.en})
      : super(LocalizationState(langauge: language)) {
    on<SwitchLanguageEvent>((event, emit) async {
      var language = event.language ??
          (state.langauge == Language.vi ? Language.en : Language.vi);
      emit(LocalizationState(langauge: language));
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('language', language.index);
    });
  }

  static Future<Language> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    var index = prefs.getInt('language') ?? 0;
    var language = index == 0 ? Language.en : Language.vi;
    return language;
  }
}
