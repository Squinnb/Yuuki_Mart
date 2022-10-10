import 'package:flutter/material.dart';

const Color knavColor = Color.fromARGB(247, 225, 225, 225);

const Map<String, Locale> kLangs = {
  "English": Locale('en', 'US'),
  "日本語": Locale('ja', 'JP')
};

const Map<String, String> kCodeToText = {"en": "English", "ja": "日本語"};

const List<Locale> kLocales = [Locale('en', 'US'), Locale('ja', 'JP')];

const Map<String, List<String>> kHomeStages = {
  "en": ["Home", "Mart", "User"],
  "ja": ["ホーム", "マート", "ユーザー"]
};

const List<String> kMartTypes = [
  "All",
  "Supermarket",
  "Restaraunt",
  "Farmer's Market",
];
