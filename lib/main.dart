import 'package:flutter/material.dart';
import 'package:flutter_packages_cw40/screens/demo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demos CW40',
      theme: ThemeData.dark(),
      home: DemoScreen(),
    );
  }
}
