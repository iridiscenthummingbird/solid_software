import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color _color = Color.fromARGB(255, 255, 255, 255);

  Color get color => _color;

  void changeColor() {
    print("change");
  }
}
