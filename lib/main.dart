import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/config/routes/index.dart';
import 'package:my_first_app/utils/application.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  ApplicationUtil.router = router;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZIB',
      onGenerateRoute: ApplicationUtil.router.generator
    );
  }
}