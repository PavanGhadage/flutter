import 'package:flutter/material.dart';

class Program4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          
        SizedBox(height: 20,),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
          ]
        )
      ),
    );
  }

}