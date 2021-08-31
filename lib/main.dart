import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software/ColorProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: MyApp(),
    ),
  );
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software Test Task',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.read<ColorProvider>().color,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.read<ColorProvider>().changeColor(),
          child: Center(
            child: Text("Text"),
          ),
        ));
  }
}
