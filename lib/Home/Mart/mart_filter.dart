import 'package:flutter/material.dart';
import '../../Shared/konstants.dart';

class MartFilter extends StatelessWidget {
  const MartFilter({Key? key, required this.callback}) : super(key: key);
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: kMartTypes.map((String mt) {
        return TextButton(
            child: Text(mt),
            onPressed: () {
              callback(mt);
            });
      }).toList(),
    );
  }
}
