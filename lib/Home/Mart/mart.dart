// Organic Mart Class
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Mart {
  String name;
  String desc;
  String island;
  String type;
  bool isChain;
  String? chainLoc;
  Mart(
      {required this.name,
      required this.island,
      required this.desc,
      this.type = "Supermarket",
      this.isChain = false,
      this.chainLoc});
}

class Marts {
  late List<Mart> _martList;
  Marts() {
    _martList = [
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
          type: "Farmer's Market"),
      Mart(
          name: "Chaya Macrobiotics",
          desc:
              "Organic food restaraunt, located in the Royal Park Hotel near Shiodome.",
          island: "Honshu",
          type: "Restaraunt"),
    ];
  }
  List<Mart> get martList => _martList;

  List<Mart> martByType(String type) {
    List<Mart> groceryMarts =
        _martList.where((Mart mart) => mart.type == type).toList();
    return groceryMarts;
  }
}
