import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          title: Text("Cart"),
          backgroundColor: Color.fromARGB(255, 211, 209, 203),
        ),
        backgroundColor: Color.fromARGB(255, 211, 209, 203),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.shopping_cart, color: Colors.grey),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shopping Cart"),
                      Text("Verify your quantity and click checkout"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildProductItem(
                'assets/Calas-articleLarge.jpg',
                'Calas',
              ),
              SizedBox(height: 20),
              buildProductItem(
                'assets/garlic-parmesan-angel-hair-pasta-sq.jpg.webp',
                'Angel Hair',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductItem(String imagePath, String productName) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Text(productName),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove),
        ),
      ],
    );
  }
}
