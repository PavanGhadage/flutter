import 'package:flutter/material.dart';

// import 'demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 125,),
                Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                 
                  children: [
                    Container(
                      decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                      color: Colors.brown, 
                    
                      ),
                      height: 370,
                      width: 10,
                      ),
                  ],
                ),
                // const SizedBox(width: 10), 
                
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    
                    Container(
                      height: 35,
                      width: 150,
                      color: Colors.orange,
                    ),
                    
                    Container(
                      height: 35,
                      width: 150,
                      color: Colors.white,
                      child: Image.network(
                        "https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg",
                       
                      ),
                    ),
                 
                    Container(
                      height: 35,
                      width: 150,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
            
                            Row(
             children: [
const SizedBox(width: 55,),
               Column(
                 children: [
                  
                   Container(decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Colors.brown, 
                    
                      ),height: 20,width: 120),
                 Container(decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Colors.amber, 
                    
                      ),height: 20,width: 190,),
               Container(decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Colors.amber, 
                    
                      ),height: 20,width: 260),
                 ]
                 ,
               ),
               
             ],
                            ),
          ],
        ),
      ),
    );
  }
}
