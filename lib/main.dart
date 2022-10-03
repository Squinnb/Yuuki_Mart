import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yuuki_mart/Shared/konstants.dart';
import 'package:yuuki_mart/Store/redux.dart';
import 'routes.dart';
import 'theme.dart';
import 'Home/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, Locale>(
          converter: (store) => store.state.locale,
          builder: (context, shit) {
            return MaterialApp(
              title: 'Flutter Man',
              theme: appTheme,
              initialRoute: HomeScreen.id,
              routes: appRoutes,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: store.state.locale,
              supportedLocales: kLocales,
            );
          }),
    );
  }
}
