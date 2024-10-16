import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Travel extends StatelessWidget{
  const Travel({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title:const  Text("Where do you want to travel ?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(255, 255, 255, 1)
        ),),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(27, 48, 101, 1),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child :Row(
                children: [
               Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:const  Color.fromRGBO(233, 237, 248, 1),
                  
                    ),
                    width: 250,
                    height: 50,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("select Destination",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(52, 111, 249, 1),
                    
                      ),),
                      const SizedBox(width: 5,),
                      SvgPicture.asset("assets/svg/Vector (8).svg",
                      width: 15,),
                    
                    ],
                                      
                    ),
                  ),
                  
                ],
              ),
              const Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color:  Color.fromRGBO(52, 111, 249, 1),
                ),
                child: const Icon(Icons.search),
                
        
              )
                ]
              ),
              
            ),
           const  SizedBox(height: 20,),
            const Text("Best Deals",
            style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0,0,0, 1),
                    
                      ),
        
            
            ),
            Row(
              children: [
                const Text("sorted bt lower price",
            style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(179, 182, 187, 1),
        
                    
                      ),
        
            
            ),
           const  SizedBox(width: 7,),
            SvgPicture.asset("assets/svg/Vector (9).svg",
                      width: 15,),
        
        
              ],
            ),
            const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color:const  Color.fromRGBO(233, 237, 248, 1),
                  
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                               Text("EL cairo",
                                style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0,0,0, 1),
                      
                            
                              ),
                      
                                
                                ),
                                Spacer(),
                                Icon((Icons.star
                                ),
                                weight: 10,
                                color: Color.fromRGBO(228, 161, 2, 1),
                               ),
                      Text("4.6",
                                style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(228, 161, 2, 1),
                      
                            
                              ),
                      
                                
                                ),
                            ],
                      
                          ),
                          const Text("Egypt",
                                style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(179, 182, 187, 1),
                      
                      
                            
                              ),
                      
                                
                                ),
                                Center(child: Padding(
                      padding: const EdgeInsets.only(top:38),
                      child: SvgPicture.asset("assets/svg/Vector 2534 (1).svg"),
                                )),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromRGBO(255, 255, 255, 1),
                                        
                                
                                      ),
                                      child: const Center(
                                        child:  Text("More",
                                                  style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                             color: Color.fromRGBO(52, 111, 249, 1)
                                        ,
                                        
                                        
                                          
                                            ),
                                        
                                                  
                                                  ),
                                      ),
                                    ),
                                     Container(
                                      height: 40,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:const  Color.fromRGBO(52, 111, 249, 1)
                                        
                                
                                      ),
                                      child: const Center(
                                        child:  Text("\$260",
                                                  style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                             color: Color.fromRGBO(255,255,255, 1)
                                        ,
                                        
                                        
                                          
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
                  const SizedBox(
                    width: 20,
                  ),
                  
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color:const  Color.fromRGBO(233, 237, 248, 1),
                  
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                               Text("Landon",
                                style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0,0,0, 1),
                      
                            
                              ),
                      
                                
                                ),
                                Spacer(),
                                Icon((Icons.star
                                ),
                                weight: 10,
                                color: Color.fromRGBO(228, 161, 2, 1),
                               ),
                      Text("4.6",
                                style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(228, 161, 2, 1),
                      
                            
                              ),
                      
                                
                                ),
                            ],
                      
                          ),
                          const Text("England",
                                style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(179, 182, 187, 1),
                      
                      
                            
                              ),
                      
                                
                                ),
                                Center(child: Padding(
                      padding: const EdgeInsets.only(top:38),
                      child: SvgPicture.asset("assets/svg/Vector 2534 (1).svg"),
                                )),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromRGBO(255, 255, 255, 1),
                                        
                                
                                      ),
                                      child: const Center(
                                        child:  Text("More",
                                                  style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                             color: Color.fromRGBO(52, 111, 249, 1)
                                        ,
                                        
                                        
                                          
                                            ),
                                        
                                                  
                                                  ),
                                      ),
                                    ),
                                     Container(
                                      height: 40,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:const  Color.fromRGBO(52, 111, 249, 1)
                                        
                                
                                      ),
                                      child: const Center(
                                        child:  Text("\$330",
                                                  style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                             color: Color.fromRGBO(255,255,255, 1)
                                        ,
                                        
                                        
                                          
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
                  //
                  
                ],
              ),
            ),
            const SizedBox(height: 20,),
             const Text("Popular Destinations",
            style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0,0,0, 1),
                    
                      ),
        
            
            ),
            Row(
              children: [
                const Text("sorted by highrt reting",
            style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(179, 182, 187, 1),
        
                    
                      ),
        
            
            ),
           const  SizedBox(width: 7,),
            SvgPicture.asset("assets/svg/Vector (9).svg",
                      width: 15,),
        
        
              ],
            ),
             const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //
                  SizedBox(
                    height: 250,
                    width: 200,
                    
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:const  Color.fromRGBO(233, 237, 248, 1),
                            
                        
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/svg/Vector 2534.svg",
                            height: 40,
                            width: 40,),
                          ),
              
                        ),
                        const SizedBox(height: 5,),
                       const  Row(
                          children: [
                             Text("cancun",
              style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0,0,0, 1),
              
                      
                        ),
              
              
              ),
              Spacer(),
              Icon(Icons.star,
              color: Color.fromRGBO(228, 161, 2, 1),),
              const Text("4.6",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(228, 161, 2, 1),
              
              
                      
                        ),
              
              
              ),
                          ],
                        ),
                       const Row(
                        children: [
                           Text("Mexico",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1),
              
              
                      
                        ),
              
              
              ),
              Spacer(),
              Text("848 reviews",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1),
              
              
                      
                        ),
              
              
              ),
                        ],
              
                        ),
                        //
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  //
                   SizedBox(
                    height: 250,
                    width: 200,
                    
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:const  Color.fromRGBO(233, 237, 248, 1),
                            
                        
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/svg/Vector 2534.svg",
                            height: 40,
                            width: 40,),
                          ),
              
                        ),
                        const SizedBox(height: 5,),
                       const  Row(
                          children: [
                             Text("santorini",
              style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0,0,0, 1),
              
                      
                        ),
              
              
              ),
              Spacer(),
              Icon(Icons.star,
              color: Color.fromRGBO(228, 161, 2, 1),),
             Text("4.6",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(228, 161, 2, 1),
              
              
                      
                        ),
              
              
              ),
                          ],
                        ),
                       const Row(
                        children: [
                           Text("greece",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1),
              
              
                      
                        ),
              
              
              ),
              Spacer(),
               Text("663 reviews",
              style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1),
              
              
                      
                        ),
              
              
              ),
                        ],
              
                        ),
                        //
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    }

}