
import 'dart:ui';

import 'package:flutter/material.dart';

class Helper {
  static const Color primaryColor = Color(0xFFFB375D);


  // generate material color from hex color
  static MaterialColor generateMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int,Color> swatch = {};
    final r = color.red, g = color.green, b = color.blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}