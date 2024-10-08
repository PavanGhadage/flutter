import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //print("${ MediaQuery.of(context).size.height}");
    return MaterialApp(
      
      home: Scaffold(
        appBar:AppBar(title: const Text("Recommanded"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        shape:const Border(bottom: BorderSide()),
        ) ,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child:const Text("Start a new career",
                  style:  TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color:  Colors.black,
                                      
                                    ),),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container( 
                        height: 30,
                        width: 120,
                        
                       clipBehavior: Clip.antiAlias,
                        decoration:BoxDecoration(
                         
                          borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: const Color.fromARGB(255, 1, 55, 181)),
                         color:  const Color.fromARGB(255, 5, 68, 218)
                          
                        ),
                        //color: Colors.blue,
                        
                        child:  const Center(child:  Text("Data Science",
                        style:  TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color:  Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
                        ),
                        ),
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                        height: 30,
                        width: 200,
                        
                                               clipBehavior: Clip.antiAlias,
                        decoration:BoxDecoration(
                         
                          borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: const Color.fromARGB(255, 182, 209, 232)),
                         color:  const Color.fromARGB(255, 182, 209, 232)
                          
                        ),
                        
                        child:  const Center(child: Text("Machine learning",
                        style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
                        )
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                        height: 30,
                        width: 130,
                        
                        clipBehavior: Clip.antiAlias,
                        decoration:BoxDecoration(
                         
                          borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: const Color.fromARGB(255, 182, 209, 232)),
                         color:   const Color.fromARGB(255, 182, 209, 232)
                          
                        ),
                        
                        child: const  Center(child:  Text("Apachi Spark",
                        style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color:  Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
                        ),
                        ),
                        ),
                      ),
                  ],
                  
                ),
              ),
              Container(
                 clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromRGBO(240, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 140,
                         clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromARGB(0, 91, 135, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                        child: Image.asset("assets/core2web.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 140,
                        width: 190,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child:  Text("Data Science",
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w900),
                              ),
                            ),
                            
                            const Text("Harvard university",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w500),
                            ),
                                      
                            
                            const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w700),
                            ),
                            
                             Row(
                                
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Container(
                                    height: 25,
                                    width: 70,
                                    clipBehavior: Clip.antiAlias,
                                                             decoration:BoxDecoration(
                                                               color: const Color.fromARGB(255, 182, 209, 232),
                                                               borderRadius: BorderRadius.circular(2),
                                                               
                                                             ),
                                    child: const Center(child: Text("Data science",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color:  Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
              
                                    ),
                                    ),
                                   
                                   ),
                                 ),
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Container(
                                height: 25,
                                width: 100,
                                                           clipBehavior: Clip.antiAlias,
                                                         decoration:BoxDecoration(
                                                           color: const Color.fromARGB(255, 182, 209, 232),
                                                           borderRadius: BorderRadius.circular(2),
                                                           
                                                         ),
                               
                                
                                child: const Center(child: Text("Machine Learing"
                                ,
                                style:  TextStyle(
                                    color:  Color.fromARGB(255, 7, 53, 92),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),
                                ),
                                
                                
                               ),
                             ),
                                
                                
                             ),
                                   
                                ],
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                 clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromRGBO(240, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 140,
                         clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromARGB(0, 91, 135, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                        child: Image.asset("assets/core2web.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 140,
                        width: 190,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child:  Text("AI & ML",
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w900),
                              ),
                            ),
                            
                            const Text("Harvard university",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w500),
                            ),
                                      
                            
                            const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w700),
                            ),
                            
                             Row(
                                
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Container(
                                    height: 25,
                                    width: 100,
                                    clipBehavior: Clip.antiAlias,
                                                             decoration:BoxDecoration(
                                                               color: const Color.fromARGB(255, 182, 209, 232),
                                                               borderRadius: BorderRadius.circular(2),
                                                               
                                                             ),
                                    child: const Center(child: Text("Machine Learning",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                     color:  Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
              
                                    ),
                                    ),
                                   
                                   ),
                                 ),
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Container(
                                height: 25,
                                width: 70,
                                                           clipBehavior: Clip.antiAlias,
                                                         decoration:BoxDecoration(
                                                           color: const Color.fromARGB(255, 182, 209, 232),
                                                           borderRadius: BorderRadius.circular(2),
                                                           
                                                         ),
                               
                                
                                child: const Center(child: Text("Decision Tree",
                                style:  TextStyle(
                                  color:  Color.fromARGB(255, 7, 53, 92),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),),
                                
                                
                               ),
                             ),
                                
                                
                             ),
                                   
                                ],
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                 clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromRGBO(240, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 140,
                         clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromARGB(0, 91, 135, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                        child: Image.asset("assets/core2web.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 140,
                        width: 190,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child:  Text("Big Data",
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w900),
                              ),
                            ),
                            
                            const Text("Harvard university",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w500),
                            ),
                                      
                            
                            const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w700),
                            ),
                            
                             Row(
                                
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Container(
                                    height: 25,
                                    width: 70,
                                    clipBehavior: Clip.antiAlias,
                                                             decoration:BoxDecoration(
                                                               color: const Color.fromARGB(255, 182, 209, 232),
                                                               borderRadius: BorderRadius.circular(2),
                                                               
                                                             ),
                                    child: const Center(child: Text("Big Data",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color:  Color.fromARGB(255, 7, 53, 92),
                                      
                                    ),
              
                                    ),
                                    ),
                                   
                                   ),
                                 ),
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Container(
                                height: 25,
                                width: 100,
                                                           clipBehavior: Clip.antiAlias,
                                                         decoration:BoxDecoration(
                                                           color: const Color.fromARGB(255, 182, 209, 232),
                                                           borderRadius: BorderRadius.circular(2),
                                                           
                                                         ),
                               
                                
                                child: const Center(child: Text("Apachi Spark",
                                style:  TextStyle(
                                 color:  Color.fromARGB(255, 7, 53, 92),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),),
                                
                                
                               ),
                             ),
                                
                                
                             ),
                                   
                                ],
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                 clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromRGBO(240, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 140,
                         clipBehavior: Clip.antiAlias,
                          decoration:BoxDecoration(
                            color: const Color.fromARGB(0, 91, 135, 1),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                        child: Image.asset("assets/core2web.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 140,
                        width: 190,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(0.0),
                              child:  Text("DevopsS",
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w900),
                              ),
                            ),
                            
                            const Text("Harvard university",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w500),
                            ),
                                      
                            
                            const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w700),
                            ),
                            
                             Row(
                                
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Container(
                                    height: 25,
                                    width: 70,
                                    clipBehavior: Clip.antiAlias,
                                                             decoration:BoxDecoration(
                                                               color: const Color.fromARGB(255, 182, 209, 232),
                                                               borderRadius: BorderRadius.circular(2),
                                                               
                                                             ),
                                    child: const Center(child: Text("Docker",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                     color:  Color.fromARGB(255, 7, 53, 92)
                                      
                                    ),
              
                                    ),
                                    ),
                                   
                                   ),
                                 ),
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Container(
                                height: 25,
                                width: 100,
                                                           clipBehavior: Clip.antiAlias,
                                                         decoration:BoxDecoration(
                                                           color: const Color.fromARGB(255, 182, 209, 232),
                                                           borderRadius: BorderRadius.circular(2),
                                                           
                                                         ),
                               
                                
                                child: const Center(child: Text("Kubernetes",
                                style:  TextStyle(
                                  color:  Color.fromARGB(255, 7, 53, 92),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),),
                                
                                
                               ),
                             ),
                                
                                
                             ),
                                   
                                ],
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
