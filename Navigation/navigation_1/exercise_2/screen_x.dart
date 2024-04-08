import 'package:flutter/material.dart';
import 'package:navigator_1_lab/exercise_2/screen_y.dart';


class ScreenX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen X"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
            //   final result = Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ScreenY()),
            // );

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ScreenY(),
                      settings: const RouteSettings(arguments: "data from x")));
            }),
      ),
    );
  }
}
