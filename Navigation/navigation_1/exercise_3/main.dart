
import 'package:flutter/material.dart';
import 'package:navigator_1_lab/exercise_1/screen_one.dart';
import 'package:navigator_1_lab/exercise_1/screen_two.dart';
import 'package:navigator_1_lab/exercise_3/screen_x.dart';
import 'package:navigator_1_lab/exercise_3/screen_y.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenX(),
        '/second': (context) => ScreenY()
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Demo',
//       onGenerateRoute: (RouteSettings settings) {
//         switch (settings.name) {
//           case '/':
//             return MaterialPageRoute(builder: (context) => ScreenThree());
//           case '/four':
//             return MaterialPageRoute(builder: (context) => ScreenFour());
//         }
//       },
//     );
//   }
// }
