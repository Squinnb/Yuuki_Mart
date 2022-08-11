import 'package:flutter/material.dart';

class FullPhoto extends StatelessWidget {
  const FullPhoto({
    Key? key,
    required this.photoUrl,
    required this.switchViewing,
  }) : super(key: key);
  final String photoUrl;
  final Function switchViewing;
  static const String routeName = "FULLPHOTO23343424";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          switchViewing();
        },
        child: Image.asset(photoUrl),
      ),
    );
  }
}
