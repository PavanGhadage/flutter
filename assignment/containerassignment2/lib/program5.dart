import 'dart:developer';

import 'package:flutter/material.dart';


class Program5 extends StatelessWidget {
  const Program5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homesceen();
  }
}

class Homesceen extends StatefulWidget {
  const Homesceen({super.key});

  @override
  State<Homesceen> createState() => _HomesceenState();
}

class _HomesceenState extends State<Homesceen> {
 bool colorchange=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("container"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:BoxDecoration(
            borderRadius: const BorderRadius.only(topRight:Radius.circular(20),
             ),
            border: Border.all(
              color: Colors.blue,
            ),
            color:(colorchange)? Colors.pink:Colors.blue,
            
          ),
          child: Center(

            child:   GestureDetector(
              onTap: () {
                log("message");
                colorchange=!colorchange;
              setState(() {
                
              });

              },
              child:(colorchange==true)?Container(
               
                color: Colors.red,
                 child: 
                const Text("click me"),
                ):Container(
                  color: Colors.blue,
                  child:
                 const Text(" Container taped"),
                 


                ),
            )),
        ),
      ),
    );
   
  }
  

}