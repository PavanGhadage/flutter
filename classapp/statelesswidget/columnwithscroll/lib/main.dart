import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        appBar:AppBar(
          title: const Text("column demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          
            children: [
              Container(
                width:MediaQuery.of(context).size.width,
                height: 300,
                //width: 400,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
             const SizedBox(height: 20,),
               Container(
                height: 300,
                width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
                width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
               width:MediaQuery.of(context).size.width,
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
               width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
                width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
                width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 300,
                width:MediaQuery.of(context).size.width,
                
                color: Colors.amber,
                child:  Image.network("https://m.media-amazon.com/images/M/MV5BODJkYjUzODctYmE0NS00NmJiLTljZGMtYmMxYzUxOTliZGY1XkEyXkFqcGc@._V1_.jpg"),
              ),
            ],
          ),
        ), 
      ),
    );
  }
}
