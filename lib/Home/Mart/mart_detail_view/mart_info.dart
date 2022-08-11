import 'package:flutter/material.dart';

import '../mart.dart';

class MartInfo extends StatelessWidget {
  const MartInfo({
    Key? key,
    required this.imgUrl,
    required this.mart,
    required this.switchViewing,
  }) : super(key: key);

  final String imgUrl;
  final Mart mart;
  final Function switchViewing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              switchViewing();
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imgUrl,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Text(
            mart.desc,
          ),
          if (mart.isChain) Text("Location: ${mart.chainLoc!}"),
        ],
      ),
    );
  }
}
