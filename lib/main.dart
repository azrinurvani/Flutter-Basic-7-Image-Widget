import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
            // child: const Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage("images/burger_1.png"),
            //   // image: NetworkImage("https://picsum.photos/200/300"),
            // ),
          ),
        ),
      ),
    );
  }
}
