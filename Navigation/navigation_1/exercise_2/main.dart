import 'package:flutter/material.dart';
import 'package:Navigation/navigation_1/exercise_2/screen_x.dart';
import 'package:Navigation/navigation_1/exercise_2/screen_y.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: ScreenX(),
    );
  }
}

