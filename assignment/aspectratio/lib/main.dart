import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  
  State createState()=> _MainAppstate();
  
  
}
class _MainAppstate extends State{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("aspect Ratio"),
        ),

        body: Center(
          child: Container(
            height: 280,
            width: 390,
            child: Image.network(fit: BoxFit.cover,"https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg"),
          )
          ,
        ),
      ),
    );
  }
}

