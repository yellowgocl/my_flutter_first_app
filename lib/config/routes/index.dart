import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_first_app/config/routes/handlers.dart';

class Routes {
  static String home = '/';
  static String album = '/album/:id';
  static String splash = '/splash';

  static void configureRoutes (Router router) {
    router.notFoundHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('page not found!');
    });
    router.define(home, handler: homeHandler);
    router.define(splash, handler: splashHandler);
    router.define(album, handler: albumHandler);
  }
}
