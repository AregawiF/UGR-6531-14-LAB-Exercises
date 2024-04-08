import 'package:flutter/material.dart';
import 'package:navigator_1_lab/exercise_1/screen_one.dart';
import 'package:navigator_1_lab/exercise_1/screen_two.dart';
import 'package:navigator_1_lab/exercise_2/screen_x.dart';
import 'package:navigator_1_lab/exercise_2/screen_y.dart';

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

