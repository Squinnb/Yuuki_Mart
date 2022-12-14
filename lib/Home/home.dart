import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Settings/settings.dart';
import './Mart/mart_list.dart';
import '../Shared/konstants.dart';
import '../Shared/bottomNav.dart';
import 'home_about.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map stage = {
    "Home": Home(),
    "Mart": MartList(),
    "User": UserSett(),
  };
  String selectedStage = "Home";
  void setStage(String stageName) {
    setState(() {
      selectedStage = stageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(selectedStage),
        backgroundColor: Colors.transparent,
      ),
      body: stage[selectedStage],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          color: knavColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(17.0),
            topRight: Radius.circular(17.0),
          ),
        ),
        child: BottomNavBar(setStage),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.appName,
            style: TextStyle(fontSize: 20.0, fontFamily: "Comfortaa"),
          ),
          HomeAbout(),
        ],
      ),
    );
  }
}
