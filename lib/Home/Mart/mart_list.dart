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
            leading: const Text(" ( ͡° ͜ʖ ͡°)"),
            onTap: () {
              // Navigate to the details page. If the user leaves and returns to
              // the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.pushNamed(context, MartDetails.id, arguments: mart);
            });
      },
    );
  }
}
