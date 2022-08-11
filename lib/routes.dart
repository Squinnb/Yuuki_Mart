import 'Home/Mart/mart_detail_view/mart_details.dart';
import 'Home/home.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomeScreen.id: (context) => const HomeScreen(),
  MartDetails.id: (context) => MartDetails(),
};
