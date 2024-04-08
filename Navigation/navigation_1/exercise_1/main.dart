import 'package:flutter/material.dart';
import 'package:Navigation/navigation_1/exercise_1/screen_one.dart';
import 'package:Navigation/navigation_1/exercise_1/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: ScreenOne(),
    );
  }
}

