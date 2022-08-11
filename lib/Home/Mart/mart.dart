// Organic Mart Class
// import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

enum MartType { grocery, restaraunt, farmer }

class Mart {
  String name;
  String desc;
  String island;
  MartType type;
  bool isChain;
  String? chainLoc;
  Mart(
      {required this.name,
      required this.island,
      required this.desc,
      this.type = MartType.grocery,
      this.isChain = false,
      this.chainLoc});
}

class Marts extends ChangeNotifier {
  late List<Mart> _marts;
  Marts() {
    _marts = [
      Mart(
        name: "Natural Mart",
        island: "Honshu",
        desc: "Small Organic shop near Hiroo Station.",
      ),
      Mart(
        name: "Bio C' Bon",
        island: "Honshu",
        isChain: true,
        chainLoc: "Akasaka",
        desc:
            "Global chain, French organic grocery with large amount of organic EU products.",
      ),
      Mart(
        name: "Natural House",
        isChain: true,
        island: "Honshu",
        chainLoc: "Aoyama",
        desc:
            "Japanese health food store with locations throughout the country.",
      ),
      Mart(
          name: "Aoyama Farmer's Market",
          desc: "Farmer's market in Aoyama, at the United Nations university",
          island: "Honshu",
          type: MartType.farmer),
      Mart(
          name: "Chaya Macrobiotics",
          desc:
              "Organic food restaraunt, located in the Royal Park Hotel near Shiodome.",
          island: "Honshu",
          type: MartType.restaraunt),
    ];
  }
  List<Mart> get marts => _marts;

  List<Mart> martByType(MartType type) {
    List<Mart> groceryMarts =
        _marts.where((Mart mart) => mart.type == type).toList();
    return groceryMarts;
  }
}
