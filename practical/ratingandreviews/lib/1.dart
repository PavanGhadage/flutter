import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class rating extends StatelessWidget {
  const rating({super.key});
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color.fromRGBO(27, 48, 101, 1),

        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        title: const Row(
          children: [
            Text(
              "London",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Text(
              "(england)",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),

          ],
        ),
        actions: const [
          Icon(
            Icons.favorite,
            size: 25,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          SizedBox(width: 10,),
          Icon(
            Icons.more_vert_rounded,
            size: 25,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text("Included",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            ),
           const  Text("for more details press on the icons",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle ,
                    border: Border.all(
                      width: 3,
                    
                      
                      color: const Color.fromRGBO(53,109,250,1),
                    ),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      margin:const  EdgeInsets.all(5),
                      padding: const EdgeInsets.all(20),
                      
                      decoration: const BoxDecoration(  
                        shape: BoxShape.circle,
                       color:Color.fromRGBO(53, 109, 250, 1),
        
                      ),
                      child: SvgPicture.asset("assets/svg/Vector (6).svg",),
                    
                    ),
                  ),
                const Text("Flight",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),),
                ],
              ),
        Column(
          children: [
            Container(
                    decoration: BoxDecoration(shape: BoxShape.circle ,
                    
                    border: Border.all(
                      
                      width: 3
                      ,color: const Color.fromRGBO(53, 109, 250, 1),)),
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(20),
                      
                      decoration:const  BoxDecoration(  
                        shape: BoxShape.circle,
                      color:  Color.fromRGBO(53,109,250,1),
                      ),
                      child: SvgPicture.asset("assets/svg/aeroplane.svg",),
                    
                    ),
                  ),
                  const Text("Hotel",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                  ),
          ],
        ),
        Column(
          children: [
            Container(
                    decoration: BoxDecoration(shape: BoxShape.circle ,
                   border: Border.all(
                    width: 3,color: const Color.fromRGBO(53,109,250,1),),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(20),
                     
                      decoration:const BoxDecoration(  
                        shape: BoxShape.circle,
                      color: Color.fromRGBO(53,109,250,1),
                      ),
                       child: SvgPicture.asset("assets/svg/Vector (5).svg"),
                    
                    ),
                  ),
                  const Text("Car",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                  ),
          ],
        ),
        Column(
          children: [
            Container(
                    decoration: BoxDecoration(shape: BoxShape.circle ,
                    border: Border.all(
                      width:3,color: const Color.fromRGBO(53,109,250,1),),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      margin:const  EdgeInsets.all(5),
                      padding:const EdgeInsets.all(20),
                     
                      decoration: const BoxDecoration(  
                        shape: BoxShape.circle,
                       color: Color.fromRGBO(53,109,250,1),
                      ),
                       child: SvgPicture.asset("assets/svg/Vector (4).svg",),
                    
                    ),
                  ),
                 const  Text("Tour",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),)
          ],
        ),
        
        
              ],
        
            ),
           const Row(
           
             children: [
               Text("Rating & Reviews",
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w700,
                 color: Color.fromRGBO(0, 0, 0, 1)
           
               ),
               ),
               Spacer(),
               Icon(Icons.star,
               size: 25,
               color: Color.fromRGBO(228, 161, 2, 1),),
               Text("4.6",
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w700,
                 color: Color.fromRGBO(228, 161, 2, 1),
           
           
               ),
               )
             ],
           ),
            Row(
              children: [
                const Text("sorted by recent reviews",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(179, 182, 187, 1)
            
            
                ),
                ),
                SizedBox(width: 4,),
                SvgPicture.asset("assets/svg/Vector (7).svg",
                width: 8.5,
                height: 7.25,
                // ignore: deprecated_member_use
                color:const  Color.fromRGBO(179, 182, 187, 1)
            
            
                ),
                const Spacer(),
                const Text("848 reviews",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(179, 182, 187, 1)
            
            
                ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const  Color.fromRGBO(233, 237, 248, 1),
        
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text("London is great",
                                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0,0,0, 1)
                    
                    
                                  ),),
                                  Spacer(),
                                  const Text("john doe",
                                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0,0,0,4),
                    
                    
                                  ),)
                    
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Icon(Icons.star,
                      size: 15,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                     Icon(Icons.star,
                      size: 15,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                     Icon(Icons.star,
                      size: 15,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                     Icon(Icons.star,
                      size: 15,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                     Icon(Icons.star,
                      size: 15,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                    Spacer(),
                                  const Text("12/08/2018",
                                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0,0,0, 1)
                    
                    
                                  ),
                                  ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0,0,0,0.6),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            const Text("Gallary",
                                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0,0,0, 1)
                    
                    
                                  ),
                                  ),
                                  Row(
                children: [
                  const Text("sorted by recent photos",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(179, 182, 187, 1)
              
              
                  ),
                  ),
                  SizedBox(width: 4,),
                  SvgPicture.asset("assets/svg/Vector (7).svg",
                  width: 8.5,
                  height: 7.25,
                  // ignore: deprecated_member_use
                  color:const  Color.fromRGBO(179, 182, 187, 1)
              
              
                  ),
                ],),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromRGBO(233, 237, 248, 1),
                          
                      
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              //clipBehavior: Clip.antiAlias,
                              // padding: EdgeInsets.all(40),
                              width: 46,
                              height: 30,
                              // color: Colors.amber,
                              child: SvgPicture.asset(
                                height: 10,
                                width: 10,
                                "assets/svg/Vector 2534.svg"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromRGBO(233, 237, 248, 1),
                      
                                    
                                      ),
                                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //clipBehavior: Clip.antiAlias,
                          // padding: EdgeInsets.all(40),
                          width: 46,
                          height: 30,
                          // color: Colors.amber,
                          child: SvgPicture.asset(
                            height: 10,
                            width: 10,
                            "assets/svg/Vector 2534.svg"),
                        ),
                      ],
                                      ),
                                    ),
                    )
                  ],
                ),
               Row(
                  children: [
                    const Text("Expires in : 58 h 60 m",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0,0,0, 1),
              
              
                  ),
                  ),
                  Spacer(),
                  Container(
                    height: 48,
                    width: 124,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:const  Color.fromRGBO(52, 111, 249, 1),
                      
        
                    ),
                    child:const Center(
                      child: const Text("\$ 330",
                                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255,255,255, 1),
                                  
                                  
                                      ),
                                      ),
                    ),
                  ),
                  ],
                ),
                
                
        
        
        
          ],
        
        
        ),
      ),
    );
  }
}
