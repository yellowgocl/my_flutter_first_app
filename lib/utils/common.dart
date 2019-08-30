import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonUtil {
  static final _instance = new CommonUtil._internal();
  factory CommonUtil () {
    return _instance;
  }
  CommonUtil._internal();
  
  static TargetPlatform getPlatform (BuildContext ctx) {
    if (ctx != null) {
      return Theme.of(ctx).platform;
    }
    if (Platform.isIOS) return TargetPlatform.iOS;
    if (Platform.isAndroid) return TargetPlatform.android;
    if (Platform.isFuchsia) return TargetPlatform.fuchsia;

    throw Exception('unsupported platform!');
  }
  static CommonUtil get instance {
    return new CommonUtil();
  }
}
