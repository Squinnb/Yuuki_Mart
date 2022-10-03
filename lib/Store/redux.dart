import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import '../Home/Mart/mart.dart';

@immutable
class AppState {
  final Locale locale;
  final Marts marts = Marts();
  AppState(this.locale);
}

enum LanguageActions { English, Japanese }

AppState reducer(AppState previousState, dynamic action) {
  if (action == LanguageActions.English) {
    return AppState(Locale("en", "US"));
  }
  if (action == LanguageActions.Japanese) {
    return AppState(Locale("ja", "JP"));
  }
  return previousState;
}

final Store<AppState> store =
    Store<AppState>(reducer, initialState: AppState(Locale("en", "US")));
