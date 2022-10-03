import 'package:flutter/material.dart';

import 'mart.dart';
import 'mart_filter.dart';
import 'mart_detail_view/mart_details.dart';
import '../../Store/redux.dart';

class MartList extends StatefulWidget {
  MartList({Key? key}) : super(key: key);

  static const routeName = '/MartList';

  @override
  State<MartList> createState() => _MartListState();
}

class _MartListState extends State<MartList> {
  List<Mart> marts = store.state.marts.martList;

  void filterByType(String mt) {
    setState(() {
      if (mt == "All") {
        marts = store.state.marts.martList;
        print(marts);
      } else {
        marts = store.state.marts.martByType(mt);
      }
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              MartFilter(callback: filterByType),
              ListView.builder(
                shrinkWrap: true,
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
                        Navigator.pushNamed(context, MartDetails.id,
                            arguments: mart);
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
