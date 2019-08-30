import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/pages/home.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomePage();
  }
);