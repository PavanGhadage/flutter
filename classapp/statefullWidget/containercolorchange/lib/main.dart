import 'package:flutter/material.dart';

void main(){
  runApp(const ToggleColor());
  
}

class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});
  @override
  State createState()=> _ToggleColorState();
}

class _ToggleColorState extends State {
  bool colorchange=true;
  @override
  Widget  build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title: const Text("togglecolor"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
          color: colorchange?Colors.orange:Colors.amber,  
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(colorchange==true){
              colorchange=false;
            }else{
              colorchange=true;
            }
            setState(() {
              
            });
          },
          backgroundColor: Colors.yellow,
          child:const Text("change"),

      ),
      ),
    );
  }
}
  
  
