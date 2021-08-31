import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ColorProvider extends ChangeNotifier {
  Color _color = Color.fromARGB(255, 255, 255, 255);
  Color get color => _color;

  bool _isWhiteText = false;
  bool get isWhiteText => _isWhiteText;

  void changeColor() {
    var rng = new Random();
    int r = rng.nextInt(256);
    int g = rng.nextInt(256);
    int b = rng.nextInt(256);
    _color = Color.fromARGB(255, r, g, b);

    //if color is too dark => change text color to white
    _isWhiteText = (r + g + b) <= 255 ? true : false;

    notifyListeners();
  }
}
