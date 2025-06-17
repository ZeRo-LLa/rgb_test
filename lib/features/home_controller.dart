import 'dart:math';
import 'package:flutter/material.dart';

class HomeController {
  Color currentColor = Colors.white;
  final List<Color> colorHistory = [];

  void generateRandomColor() {
    final random = Random();
    final newColor = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    colorHistory.add(currentColor);
    if (colorHistory.length > 5) {
      colorHistory.removeAt(0);
    }

    currentColor = newColor;
  }
}
