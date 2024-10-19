
  import 'package:flutter/material.dart';

class thirdScreen
 extends StatelessWidget {
  const thirdScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: const Text("third screen"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: ElevatedButton(onPressed: (){

      }, child:const Text ("Goto the second page"),

    ),
    ),
   );

    
  }
}