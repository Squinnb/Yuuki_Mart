import '../../Shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Auth auth = Auth();
  Map stage = {
    "Home": const Home(),
    "Mart": MartList(),
    "Auth": UserSett(),
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
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: const Text("有機マートへようこそ\n\n Organicとは。。。"),
      ),
    );
  }
}
