import 'package:flutter/material.dart';
import 'package:my_first_app/utils/application.dart';

class NavigatorUtil {
  static void goBack ({ @required BuildContext context, dynamic params }) {
    if (params == null)
      ApplicationUtil.router.pop(context);
    else 
      Navigator.pop(context, params);
  }
  
}