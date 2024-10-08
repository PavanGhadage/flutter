
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});
 

  @override
  Widget build(BuildContext context) {
    
     //print("mediaquery:${MediaQuery.of(context).size.width}");
    return  MaterialApp(
      //print(${MediaQuery.of(context).size.width}),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( title: const Text("My Cart",
        style: TextStyle(fontSize: 30,
        fontWeight:FontWeight.w800,color: Color.fromARGB(255, 51, 157, 243),
        )
        ,),
        centerTitle: true,
        
      

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                
                
               width:MediaQuery.of(context).size.width,
                height: 150,
                
                decoration: BoxDecoration(
                  
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 244, 240, 240),
                ),
                child:  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 140,
                        width: 140,
                        clipBehavior: Clip.antiAlias,
                        child: 
                        Image.asset("assets/image.jpeg",
                        fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 140,
                        width: 190,
                                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:45,
                              width: 190,
                              child:const  Text("Nike Shoes",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                              ),
                            ),
                           
                            Container(
                              height: 40,
                              width: 190,
                              child: const Text("with iconic style and legendary comfort,on repeat.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                            Container(
                              width: 190,
                              height: 45,
                              child: Row(
                                
                                
                                children: [
                                
                                
                                const Text("\$570.00",
                                style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),),
                                Spacer(),
                                
                                Row( 
                                
                                  children: [
                                  const Icon(Icons.remove,
                                  size:25,),
                                  //Spacer(),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    
                                  width: 20,
                                  child: Center(
                                    child: Text("1",
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                  ),
                                  clipBehavior:Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: const Color.fromARGB(255, 90, 82, 243)
                                  )
                                  ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  //Spacer(),
                                  const Icon(Icons.add,
                                  size: 25,),
                                  
                                ],),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                
              
                ),
                 
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                
                
               width:MediaQuery.of(context).size.width,
                height: 150,
                
                decoration: BoxDecoration(
                  
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 244, 240, 240),
                ),
                child:  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 140,
                        width: 140,
                        clipBehavior: Clip.antiAlias,
                        child: 
                        Image.asset("assets/image.jpeg",
                        fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 140,
                        width: 190,
                                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:45,
                              width: 190,
                              child:const  Text("Nike Shoes",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                              ),
                            ),
                           
                            Container(
                              height: 40,
                              width: 190,
                              child: const Text("with iconic style and legendary comfort,on repeat.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                            Container(
                              width: 190,
                              height: 45,
                              child: Row(
                                
                                
                                children: [
                                
                                
                                const Text("\$570.00",
                                style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),),
                                Spacer(),
                                
                                Row( 
                                
                                  children: [
                                  const Icon(Icons.remove,
                                  size: 25,),
                                  //Spacer(),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    
                                  width: 20,
                                  child: Center(
                                    child: Text("1",
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                  ),
                                  clipBehavior:Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: const Color.fromARGB(255, 90, 82, 243)
                                  )
                                  ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  //Spacer(),
                                  const Icon(Icons.add,
                                  size: 25,),
                                  
                                ],),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                
              
                ),
                 
                
              ),
            ),
            Spacer(),//2
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                      
                      Row(
                      children: [
                        Text("SubTitle:",
                        style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )),
                        Spacer(),
                        Text("\$800.00",
                        style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                      
                     
                    ),
                    Row(
                      children: [
                        Text("DelevaryFee:",
                        style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )),
                        Spacer(),
                        Text("\$5.00",
                        style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                      
                     
                    ),
                    Row(
                      children: [
                        Text("Discount:",
                        style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )),
                        Spacer(),
                        Text("\$40%",
                        style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                      
                     
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 93, 73, 244),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Checkout for ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            )
                            ),
                            Text("\$480",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
          
        ),
      ),
    );
  }
}
