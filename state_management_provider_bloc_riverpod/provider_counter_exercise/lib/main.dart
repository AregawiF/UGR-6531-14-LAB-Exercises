// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Counter App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Counter app using provider',
              ),
              backgroundColor: const Color.fromARGB(255, 180, 145, 240),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Consumer<CounterModel>(builder: (context, value, child) {
                    return Text(
                      '${value.count}',
                      style: TextStyle(fontSize: 30),
                    );
                  }),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () =>
                            context.read<CounterModel>().decrement(),
                        tooltip: 'Decrement',
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(width: 20),
                      FloatingActionButton(
                        onPressed: () =>
                            context.read<CounterModel>().increment(),
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ]))));
  }
}
