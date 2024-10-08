import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
      return  Scaffold(
        appBar: AppBar(
          title:const Text("appBar"),
        //  centerTitle: true,
          backgroundColor: Colors.blue,
          leading:Icon(Icons.arrow_back_ios_new),
        actions: [
          Icon(Icons.arrow_forward),
          ],
        ),
        
      );
  }

}