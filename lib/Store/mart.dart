// Organic Mart Class
// import 'package:http/http.dart' as http;
import './address.dart';

class Mart {
  Mart({
    required this.name,
    required this.desc,
    this.type = Location.supermarket,
    this.isChain = false,
    this.chainLoc,
    this.prefecture = "Tokyo",
    required this.street,
    required this.postalCode,
  });

  final String name;
  final String desc;
  final Location type;
  final bool isChain;
  final String? chainLoc;
  final String prefecture;
  final String street;
  final String postalCode;

  String get address => "$name $street, $prefecture, $postalCode, Japan";
}

class Marts {
  late List<Mart> _martList;
  Marts() {
    _martList = [
      Mart(
          name: "Natural Mart",
          desc: "Small Organic shop near Hiroo Station.",
          street: "5-19-5 Hiroo, Shibuya",
          postalCode: "150-0012"),
      Mart(
          name: "Bio C' Bon",
          isChain: true,
          chainLoc: "Akasaka",
          desc:
              "Global chain, French organic grocery with large amount of organic EU products.",
          street: "4-3-6 Akasaka, Minato",
          postalCode: "107-0052"),
      Mart(
          name: "Natural House",
          isChain: true,
          chainLoc: "Aoyama",
          desc:
              "Japanese health food store with locations throughout the country.",
          street: "3-6-18 Kitaaoyama Minato-ku",
          postalCode: "107-0061"),
      Mart(
        name: "Aoyama Farmer's Market",
        desc: "Farmer's market in Aoyama, at the United Nations university",
        type: Location.farmer,
        street: "5-53-70 Jingumae, Shibuya",
        postalCode: "150-0001",
      ),
      Mart(
          name: "Chaya Macrobiotics",
          desc:
              "Organic food restaraunt, located in the Royal Park Hotel near Shiodome.",
          type: Location.restaraunt,
          street: "1-6-3 Higashishinbashi, Minato",
          postalCode: "105-8333"),
    ];
  }
  List<Mart> get martList => _martList;

  List<Mart> martByType(String type) {
    List<Mart> martsOfCertainLocation =
        _martList.where((Mart mart) => mart.type.type == type).toList();
    return martsOfCertainLocation;
  }
}

enum Location {
  farmer("Farmer's Market"),
  supermarket("Supermarket"),
  restaraunt("Restaraunt");

  const Location(this.type);
  final String type;
}
