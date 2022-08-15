import 'package:flutter/material.dart';
import 'package:yuuki_mart/Shared/shared.dart';
export 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class UserSett extends StatelessWidget {
  UserSett({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Settings: "), LangMenu()]),
      ),
    );
  }
}

class LangMenu extends StatefulWidget {
  LangMenu();

  @override
  State<LangMenu> createState() => _LangMenuState();
}

class _LangMenuState extends State<LangMenu> {
  bool isIos = Platform.isIOS;
  String userLang = kLangs[0];
  int currIndex = -1;
  void setUserLang(dynamic v) {
    setState(() {
      if (isIos && v is int) {
        userLang = kLangs[v];
        currIndex = v;
      }
      //else if (!isIos && v is String) {
      //   userLang = v;
      // }
    });
  }

  Widget build(BuildContext context) {
    if (isIos)
      return CupertinoLangMenu(
        userLang: userLang,
        setUserLang: setUserLang,
        currIndex: currIndex,
      );
    else
      return MaterialLangMenu(userLang: userLang, setUserLang: setUserLang);
  }
}

class CupertinoLangMenu extends StatelessWidget {
  CupertinoLangMenu({
    Key? key,
    required this.userLang,
    required this.setUserLang,
    required this.currIndex,
  }) : super(key: key);
  final String userLang;
  final Function setUserLang;
  final int currIndex;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CupertinoPicker(
        scrollController: FixedExtentScrollController(initialItem: 1),
        itemExtent: 50.0,
        diameterRatio: 3.0,
        children: kLangs
            .map(
              (lang) => Center(
                child: Text(
                  lang,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: (currIndex == -1 || kLangs[currIndex] == lang)
                        ? Color.fromRGBO(134, 168, 255, 1)
                        : Color.fromARGB(255, 254, 254, 255),
                  ),
                ),
              ),
            )
            .toList(),
        onSelectedItemChanged: (int i) {
          setUserLang(i);
        },
      ),
    );
  }
}

class MaterialLangMenu extends StatelessWidget {
  MaterialLangMenu(
      {Key? key, required this.userLang, required this.setUserLang})
      : super(key: key);
  final String userLang;
  final Function setUserLang;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: userLang,
      hint: Text("Language"),
      onChanged: (dynamic v) {
        setUserLang(v);
      },
      items: kLangs.map((String ln) {
        return DropdownMenuItem(
          child: Text(ln),
          value: ln,
        );
      }).toList(),
    );
  }
}
