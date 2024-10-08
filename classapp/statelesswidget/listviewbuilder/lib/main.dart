import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text("listview demo"),
        centerTitle: true,
      backgroundColor: Colors.blue,),
        body: ListView.builder(
          itemCount: 25,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {  
            return Text("$index",
            style: const TextStyle(fontSize: 25,
            fontWeight: FontWeight.w800,),);
          },
          
         
        ),
      ),
    );
  }
}
