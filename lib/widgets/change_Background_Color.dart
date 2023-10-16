
import 'dart:math';

import 'package:flutter/material.dart';

Future<Color> changeBackgroundColor(newColor) async {
  final random = Random();
   newColor = Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );


  return newColor;
}