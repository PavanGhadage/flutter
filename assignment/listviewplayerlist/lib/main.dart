import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  State createState()=> _MainAppState();
}

  

class _MainAppState extends State{
  
 
  List PlayerList =[];
  TextEditingController platerD=TextEditingController();
  String? PlayerName;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(

    children: [
       TextField(
        controller: platerD,
      obscureText: true,
        decoration: const InputDecoration(
          hintText: "enter player name",
          hintStyle: TextStyle(
            fontSize: 14,

          ),
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.visibility),


        ),
      ),
      
     ElevatedButton(onPressed: (){
      PlayerName=platerD.text.trim();
            if(PlayerName!=""){
              PlayerList.add("Players:$PlayerName");
              platerD.clear();
              setState(() {
                
              });
            }
     }, child: const Text("Add",
     style: TextStyle(
      fontSize: 13,

     ),),
     ),
     ListView.builder(
      shrinkWrap: true,
      itemCount: PlayerList.length,
      itemBuilder: (BuildContext context, int index) { 
     
        return Text("${PlayerList[index]}");
       },
       )
    ],
    ),
      ),
      );
  }
}
