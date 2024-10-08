import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
      return  Scaffold(
        appBar: AppBar(
          title:const Text("appBar project"),
          centerTitle: true,
          leading:Icon(Icons.arrow_back_ios_new),
        actions: [
          Icon(Icons.arrow_forward),
          ],
          backgroundColor: Colors.blue,
          
        ),
        
      );
  }

}