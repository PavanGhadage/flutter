import 'package:flutter/material.dart';

void main() {
  runApp(const CricPlayers());
}

class CricPlayers extends StatefulWidget {
  const CricPlayers({super.key});
  @override
  State createState()=> _CricPlayersState();
  
}

class _CricPlayersState extends State{
  List players=["https://www.sakshi.com/gallery_images/2024/07/2/Rohit%20Sharma%20Photoshoot%20in%20t20%20World%20Cup%20Trophy_1.jpg",
  "https://i.pinimg.com/564x/51/22/41/51224119f7162ba6e4311d0e3ed77c36.jpg",
  "https://i.pinimg.com/564x/97/d0/c1/97d0c19a50104e6afc5bb6f11240fa98.jpg",
  "https://i.pinimg.com/736x/da/df/e2/dadfe2b30c5ef62ca153ba7fc183d58e.jpg",];
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("players"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(height: 300,
          width: 200,
          child: Image.network(players[count],
          fit: BoxFit.cover,),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(count<players.length-1){
              count++;
            }else{
              count=0;
            }
            setState(() {
              
            });
        },
        backgroundColor: Colors.blue,
        child: const Text("next"),
        ),

      ),

    );
  }
}