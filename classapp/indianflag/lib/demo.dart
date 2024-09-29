import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

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
        body: Container(
          // color: const Color.fromARGB(255, 97, 170, 230),
           decoration:  const BoxDecoration(
                          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.pexels.com/photos/46160/field-clouds-sky-earth-46160.jpeg?cs=srgb&dl=pexels-pixabay-46160.jpg&fm=jpg")),
                        ),
          child: Column(
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
                        color: Color.fromARGB(255, 212, 211, 211) 
                      
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
                //  Column(
                //    children: [
                    
                //      Container(decoration:  const BoxDecoration(
                //           borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                //         color:Colors.grey, 
                      
                //         ),height: 20,width: 120),
                //    Container(decoration:  const BoxDecoration(
                //           borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                //         color:Colors.grey, 
                      
                //         ),height: 20,width: 190,),
                //  Container(decoration:  const BoxDecoration(
                //           borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                //        color:Colors.grey, 
                      
                //         ),height: 20,width: 260),
                //    ]
                //    ,
                //  ),
                 
               ],
                              ),
            ],
          ),
        ),
      ),
    );
  }
}
