import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("container Demo",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Center(

          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                //begin: Alignment.topCenter,
               // end: Alignment.bottomCenter,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,

               colors: [
                Colors.black,
                Colors.pink,
               ])

            ),
          ),
        ),
      ),
    );
  }
}


