import 'package:flutter/material.dart';

class program3 extends StatelessWidget{
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
            borderRadius: BorderRadius.only(topRight:Radius.circular(20),
             ),
            border: Border.all(
              color: Colors.blue,
            ),
            color: Colors.pink,
            
          ),
          child:const Center(
            child:   Text("container")),
        ),
      ),
    );
   
  }
  
}