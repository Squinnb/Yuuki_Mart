import 'package:flutter/material.dart';

import 'mart.dart';
import 'mart_detail_view/mart_details.dart';

/// Displays a list of SampleItems.
class MartList extends StatelessWidget {
  MartList({Key? key}) : super(key: key);

  static const routeName = '/MartList';

  final List<Mart> marts = Marts().marts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      restorationId: 'sampleItemListView',
      itemCount: marts.length,
      itemBuilder: (BuildContext context, int index) {
        final mart = marts[index];

        return ListTile(
            title: Text(mart.name),
            leading: Hero(
              tag: mart.name,
              child: Image.asset(
                "Images/MartType/${mart.type}.png",
                width: MediaQuery.of(context).size.width / 12,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, MartDetails.id, arguments: mart);
            });
      },
    );
  }
}
