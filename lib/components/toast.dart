import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:tablet/utils/global.dart';
import 'package:tablet/style/color.dart';

// https://pub.dev/packages/another_flushbar
class Toast {
  static Future<dynamic> successBar(String message, {int duration = 2}) {
    return _getFlushBar(
      message: message,
      icon: const Icon(Icons.done, color: Colors.white),
      backgroundColor: RuColor.green,
    );
  }

  static Future<dynamic> errorBar(String message, {int duration = 2}) {
    return _getFlushBar(
      message: message,
      icon: const Icon(Icons.warning, color: Colors.white),
      backgroundColor: RuColor.red,
    );
  }

  static Future<dynamic> infoBar(String message, {int duration = 2}) {
    return _getFlushBar(
      message: message,
      icon: const Icon(Icons.sms, color: Colors.white),
      backgroundColor: RuColor.gray,
    );
  }

  static Future<dynamic> _getFlushBar({
    required String message,
    required Widget icon,
    required Color backgroundColor,
    int duration = 2,
  }) {
    BuildContext context = Global.navigatorContext!;
    return Flushbar(
      message: message,
      icon: icon,
      backgroundColor: backgroundColor,
      duration: Duration(seconds: duration),
      maxWidth: 400,
      borderRadius: BorderRadius.circular(4),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      isDismissible: true,
    ).show(context);
  }
}
