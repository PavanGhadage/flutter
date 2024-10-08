import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("${MediaQuery.of(context).size.width}");
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text("listview demo"),
        centerTitle: true,
      backgroundColor: Colors.blue,),
        body: ListView(
          children: [
            
            Container(
              height:392 ,
              
              width:MediaQuery.of(context).size.width,
              
              child: Image.network("https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg",)
              ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Icon(Icons.favorite,
               color: Colors.red,),
               SizedBox(width: 10,),
               const Icon(Icons.comment),
               SizedBox(width: 10,),
               const Icon(Icons.share),
               SizedBox(width: 275,),
               
               const Icon(Icons.save),
             ],
           ),
           Container(
              height:392 ,
              
              width:MediaQuery.of(context).size.width,
              
              child: Image.network("https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg",)
              ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Icon(Icons.favorite,
               color: Colors.red,),
               SizedBox(width: 10,),
               const Icon(Icons.comment),
               SizedBox(width: 10,),
               const Icon(Icons.share),
               SizedBox(width: 275,),
               
               const Icon(Icons.save),
             ],
           ),
           

          ],
        ),
      ),
    );
  }
}
