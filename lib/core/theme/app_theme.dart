import 'package:flutter/widgets.dart';

class MyAppTheme {
  static Color primaryColor = Color(0xffc67c4e);
  static Color titleBlackText = Color(0xff242424);
  static Color subtitleText = Color(0xffa2a2a2);
  static Color iconBlack = Color(0xff2a2a2a);
  static Color dividerColor = Color(0xfff9f2ed);
}

class MyTextStyle {
  static TextStyle normalTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 16,
      color: color ?? MyAppTheme.titleBlackText,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle smallTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 16,
      color: color ?? MyAppTheme.titleBlackText,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle subTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 12,
      color: color ?? MyAppTheme.subtitleText,
      // fontWeight: FontWeight.bold,
    );
  }
}
