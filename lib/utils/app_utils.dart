import 'dart:math';

import 'package:flutter/material.dart';

class AppUtils {
  static List<Color> generateRandomColors(int n) {
    final random = Random();
    List<Color> bgColors = [];

    for (int i = 0; i < n; i++) {
      Color color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
      bgColors.add(color);
    }

    return bgColors;
  }
}
