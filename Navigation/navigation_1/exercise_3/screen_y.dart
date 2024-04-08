import 'package:flutter/material.dart';


class ScreenY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Y"),
      ),
      body: Center(
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context, 'Yes');
        //     },
        //     child: const Text('Go Back'),
        //     ))
        child: Text(text)),
    );
  }
}
