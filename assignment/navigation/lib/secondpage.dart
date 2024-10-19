
  import 'package:flutter/material.dart';
import 'package:navigation/ThirdPage.dart';

class SecondScreen
 extends StatelessWidget {
  const SecondScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: const Text("second screen"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).pushAndRemoveUntil(
         MaterialPageRoute(builder: (context){
          return thirdScreen();
         }
         ),
          (Route){
          return false;
        }
        );
       

      }, child:const Text ("Goto the third page"),

    ),
    ),
   );

    
  }
}