import 'package:flutter/material.dart';
import '../../Shared/shared.dart';
import 'Auth/auth.dart';
import 'Mart/mart_list.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map stage = {
    "Home": const Home(),
    "Mart": MartList(),
    "Auth": const Auth(),
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
      appBar: AppBar(
        title: Text(selectedStage),
        backgroundColor: Colors.transparent,
      ),
      body: stage[selectedStage],
      bottomNavigationBar: BottomNavBar(setStage),
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
