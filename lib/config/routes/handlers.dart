import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/pages/album.dart';
import 'package:my_first_app/pages/home.dart';
import 'package:my_first_app/pages/splash_page.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomePage();
  }
);

var splashHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SplashPage();
  }
);

var albumHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String id = params["id"]?.first;
    String title = params["title"]?.first;
    return AlbumPage(id:id, appBatTitle: title,);
  }
);

