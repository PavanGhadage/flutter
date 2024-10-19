import 'package:flutter/material.dart';
import 'package:navigation/secondpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationApp(),
        
    );
  }
}

class NavigationApp extends StatefulWidget {
  const NavigationApp({super.key});
  State createState()=> _NavigationAppState();
}
class _NavigationAppState extends State{

  
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("First screen"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(
         MaterialPageRoute(builder: (context){
          return SecondScreen();
         }
         ),
          
        );
       

      }, child:const Text ("Goto the second page"),

    ),
    ),
   );
  }
}
