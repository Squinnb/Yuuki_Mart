import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuuki_mart/Shared/konstants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavBar extends StatefulWidget {
  final Function setStage;
  const BottomNavBar(this.setStage, {Key? key}) : super(key: key);
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<BottomNavigationBarItem> navItems(
      String navHome, String navMart, String navUser) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(
          FontAwesomeIcons.houseChimney,
          size: 20,
        ),
        label: navHome,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          FontAwesomeIcons.store,
          size: 20,
        ),
        label: navMart,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          FontAwesomeIcons.user,
          size: 20,
        ),
        label: navUser,
      ),
    ];
  }

  int selectedIndex = 0;

  Widget build(BuildContext context) {
    String navHome = AppLocalizations.of(context)!.navHome;
    String navMart = AppLocalizations.of(context)!.navMart;
    String navUser = AppLocalizations.of(context)!.navUser;
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: Color.fromARGB(218, 86, 86, 86),
        onTap: (int i) {
          widget.setStage(kHomeStages["en"]![i]);
          selectedIndex = i;
        },
        items: navItems(navHome, navMart, navUser));
  }
}
