import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/config/routes/index.dart';
import 'package:my_first_app/utils/application.dart';

class NavigatorUtil {
  static void goBack ({ BuildContext context, dynamic params }) {
    if (params == null)
      ApplicationUtil.router.pop(context);
    else 
      Navigator.pop(context, params);
  }

  static void toLandingPage (BuildContext context) {
    ApplicationUtil.router.navigateTo(context, Routes.home, replace: true);
  }

  static void to(BuildContext context, String name, { dynamic params, bool replace, TransitionType transition }) {
    transition ??= TransitionType.inFromRight;
    replace ??= false;
    
    ApplicationUtil.router.navigateTo(context, name, transition: transition, replace: replace);
  }
  
  static void album(BuildContext context, String id, { bool replace, dynamic params }) {
    var path = Routes.album.replaceAll(new RegExp(":id"), "$id");
    Uri uri = Uri(
          scheme: '',
          host: '',
          path: path,
          queryParameters: params);
    to(context, uri.path + "?" + uri.query);
  }
}