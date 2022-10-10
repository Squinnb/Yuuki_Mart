import 'package:flutter/material.dart';
import 'full_photo.dart';
import '../../../Store/mart.dart';
import 'mart_info.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MartDetails extends StatefulWidget {
  static const String id = '/mart_detail';

  const MartDetails({Key? key}) : super(key: key);

  @override
  State<MartDetails> createState() => _MartDetailsState();
}

class _MartDetailsState extends State<MartDetails> {
  bool isViewingImg = false;
  void switchViewing() {
    setState(() {
      isViewingImg = !isViewingImg;
    });
  }

  void launchMart(Mart mart) {
    MapsLauncher.launchQuery(mart.address);
  }

  @override
  Widget build(BuildContext context) {
    Mart mart = ModalRoute.of(context)?.settings.arguments as Mart;
    String imgUrl = mart.isChain
        ? "Images/${mart.name}:${mart.chainLoc}.jpg"
        : "Images/${mart.name}.jpg";

    return Scaffold(
      appBar: AppBar(
        title: Text(mart.name),
      ),
      body: (isViewingImg
          ? FullPhoto(
              photoUrl: imgUrl,
              switchViewing: switchViewing,
            )
          : MartInfo(
              imgUrl: imgUrl,
              mart: mart,
              switchViewing: switchViewing,
            )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 209, 209, 209),
        child: Icon(Icons.location_on),
        onPressed: () {
          launchMart(mart);
        },
      ),
    );
  }
}
