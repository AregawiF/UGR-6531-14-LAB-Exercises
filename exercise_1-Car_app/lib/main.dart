import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // height: 200,
                      child: Image.asset(
                        'assets/1975_porsche_911-carrera_911_005_web-scaled.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "1975 Porsche 911 Carrera",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.thumb_up_alt_outlined),
                            Text("0"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.comment),
                            Text("0"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.share),
                            Text("Share"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Text(
                          "Essential Information",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          "1 of 3 done",
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.green),
                        Text(
                          'Year, Make, Model, VIN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.edit, color: Colors.grey),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Year: 1975'),
                        Text('Make: Porsche'),
                        Text('Model: 1975'),
                        Text('VIN: 9115400029'),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.green),
                        Text(
                          'Description',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.edit, color: Colors.grey),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.green),
                        Text(
                          'Photos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.edit, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
