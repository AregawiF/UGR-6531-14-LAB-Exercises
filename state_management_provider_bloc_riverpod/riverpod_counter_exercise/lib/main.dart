import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_notifier.dart'; 

void main() {
  runApp(
    ProviderScope(
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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 17, 0, 255)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider); 

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app using Riverpod'),
        backgroundColor: Color.fromARGB(255, 80, 127, 245),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      ref.read(counterProvider.notifier).decrement(),
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () =>
                      ref.read(counterProvider.notifier).increment(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
