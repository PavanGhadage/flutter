// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: BottomShit(),
    );
  }
  
  
}
class BottomShit extends StatefulWidget{
  
 const  BottomShit({super.key});
 @override
 State createState()=> _MainAppState();
}

class _MainAppState extends State{
  List<Map> MyList=[{}

  ];
 
  TextEditingController NameController=TextEditingController();
  
  TextEditingController CompController=TextEditingController();
  
  String? Name;
  
  String? Company;
  
  void Openbottomshit(){
    showModalBottomSheet(
      context: context, builder: (builder){
        return Padding(
          padding:  EdgeInsets.only(bottom:MediaQuery. of(context). viewInsets.bottom),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10,),
            
                 Padding(
                  padding:const EdgeInsets.all(10.0),
                  child: TextField(
                    // obscureText: true,
                    controller: NameController,
                  
                    decoration:const InputDecoration(
                      hintText: "enter name",
                      
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      border: OutlineInputBorder(),
                      
                  
                    ),
                    
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: CompController,
                    
                 
                    obscureText: true,
                  
                    decoration: const InputDecoration(
                      hintText: " dream company name",
                      
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      border: OutlineInputBorder(),
                      
                  
                    ),
                    
                  ),
                ),
                const SizedBox( height: 10,),
                ElevatedButton(onPressed: (){
                  Name=NameController.text.trim();
                  Company=CompController.text.trim();
                  Navigator.pop(context);
                  if(Name!="" && Company!=""){
                    
                     MyList.addAll({{"name":"$Name", "company":"$Company"}});
                     log("$MyList");
                     NameController.clear();
                     CompController.clear();
                     setState(() {
                       
                     }
                     );
                  }
                  
                   
                }, child: const Text("Add"),
                ),
            
                
            
            
              ]
              
            
            ),
          ),
        );
      }
      );
  }
  
 
 @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Bottomsheet"),
      centerTitle: true,
    ),
    body:
    Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text("name:$Name"),
              Text("company:${Company}")
            ],
          ),
        ),
        
        
        
    
        
      
      ],
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          Openbottomshit();
          setState(() {
            
          });
        },
        backgroundColor: Colors.amber,
          
        child:  const Icon(Icons.add),
        
        
      ),
  );
}
}


 

        
  

