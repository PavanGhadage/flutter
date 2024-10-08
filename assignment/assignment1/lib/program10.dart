
import 'package:flutter/material.dart';

class Program10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
            bottomRight: Radius.circular(20)),
            border:Border.all(color: Colors.red)  , 
            color: Colors.blue,       
          ),
          
        ),
      ),
    );
  }
}