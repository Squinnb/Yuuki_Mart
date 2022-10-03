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
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                switchViewing();
              },
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Hero(
                    tag: mart.name,
                    child: Image.asset(
                      "Images/MartType/${mart.type}.png",
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                  ),
                  Text(
                    " ${mart.type}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 223, 173, 241),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  )
                ],
              ),
            ),
            Text(
              mart.desc,
            ),
            if (mart.isChain) Text("Location: ${mart.chainLoc!}"),
          ],
        ),
      ),
    );
  }
}
