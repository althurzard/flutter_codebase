part of 'localization_bloc.dart';

@immutable
abstract class LocalizationEvent {}

class SwitchLanguageEvent extends LocalizationEvent {
  final Language? language;
  SwitchLanguageEvent({this.language});
}
