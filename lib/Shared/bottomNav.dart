import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './konstants.dart';

class BottomNavBar extends StatefulWidget {
  final Function setStage;

  const BottomNavBar(this.setStage, {Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> body = ["Home", "Mart", "Auth"];
  Map<String, Icon> navIcons = {
    "Home": const Icon(
      FontAwesomeIcons.houseChimney,
      size: 20,
    ),
    "Mart": const Icon(
      FontAwesomeIcons.store,
      size: 20,
    ),
    "Auth": const Icon(
      FontAwesomeIcons.user,
      size: 20,
    ),
  };

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: knavColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 35, 35, 35),
      unselectedItemColor: Color.fromARGB(255, 145, 145, 145),
      onTap: (int i) {
        widget.setStage(body[i]);
        selectedIndex = i;
      },
      items: <BottomNavigationBarItem>[
        ...body.map((String b) {
          return BottomNavigationBarItem(
            icon: navIcons[b]!,
            label: b,
          );
        })
      ],
    );
  }
}
