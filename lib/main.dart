import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Man',
      theme: appTheme,
      initialRoute: HomeScreen.id,
      routes: appRoutes,
    );
  }
}
