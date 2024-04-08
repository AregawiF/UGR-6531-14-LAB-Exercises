import 'package:flutter/material.dart';
import 'package:navigator_1_lab/exercise_1/screen_two.dart';


class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ScreenTwo()));
            }),
      ),
    );
  }
}
