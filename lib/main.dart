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
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Solid Software Test Task',
        home: HomeScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.watch<ColorProvider>().color,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.read<ColorProvider>().changeColor(),
          child: Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: context.watch<ColorProvider>().isWhiteText
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ));
  }
}
