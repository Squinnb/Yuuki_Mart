import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  String username;
  String lang;
  Auth({this.username = "Anon", this.lang = "English"});
}
