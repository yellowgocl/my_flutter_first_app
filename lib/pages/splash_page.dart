import 'package:flutter/material.dart';
import 'package:my_first_app/utils/navigator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:svgaplayer_flutter/svgaplayer_flutter.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Observable.timer(0, Duration(seconds: 4)).listen((_) {
      NavigatorUtil.toLandingPage(this.context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SVGASimpleImage(
          resUrl: "https://github.com/yyued/SVGA-Samples/blob/master/angel.svga?raw=true")
    );
  }
}