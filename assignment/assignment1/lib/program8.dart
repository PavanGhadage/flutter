import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Program8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            border:Border.all(color: Colors.red)  ,        
          ),
        ),
      ),
    );
  }
}