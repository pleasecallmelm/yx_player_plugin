import 'dart:async';

import 'package:flutter/services.dart';

class Yxplayerplugin {
  static const MethodChannel _channel =
      const MethodChannel('yxplayerplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
