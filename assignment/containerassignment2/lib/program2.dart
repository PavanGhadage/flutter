import 'package:flutter/material.dart';

class Program2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:BoxDecoration(
            borderRadius: const BorderRadius.only(topLeft:Radius.circular(10) ),
            border: Border.all(
              color: Colors.red,
            )
          ),
          child:const Center(
            child:   Text("container")),
        ),
      ),
    );
   
  }
  
}