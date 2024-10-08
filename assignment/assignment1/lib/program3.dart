import 'package:flutter/material.dart';

class Program3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text("hellowcore2web",
      style:  TextStyle(
        color: Color.fromARGB(255, 2, 6, 82)
      ),
      ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width:360,
          color: Colors.blue,
        ),
      ),
    );
  }
  
}