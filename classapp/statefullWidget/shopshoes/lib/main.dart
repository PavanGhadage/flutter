import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<StatefulWidget> createState()=> _MainAppState();

}
class _MainAppState extends State{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: const Text("shoes",style: TextStyle(
         color: Color.fromARGB(255, 27, 22, 112),
          ),
          ),
          actions: [
            
            Icon(Icons.shopping_cart,
            color:  Color.fromARGB(255, 27, 22, 112),),
          ],
          
        ),
        
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Image.network("",
              fit: BoxFit.cover,),
            ),
            const SizedBox(height: 10,),
           const Column(
        
            crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
               // SizedBox(width: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Nike Air Force 1 "07',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                  ),
                ),
              
            
              ],
              
            ),
            const SizedBox(height: 10,),
            Row(
              
              children: [
               const  SizedBox(width: 10,),
                ElevatedButton(
                  style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 16, 107)),

                  ),
                  
                  onPressed: () {  },child:  const  Text("SHOES",
                  style:  TextStyle(color: Colors.white),
                  ),
                  ),
                

                const SizedBox(width: 20,),
                ElevatedButton(
                  style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 16, 107)),

                  ),
                  
                  onPressed: () {  },child:  const Text("FOOTWEAR",
                  style:  TextStyle(color: Colors.white),),
                ),

                
                  
                  
                  
                

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: const Column(
                  children: [
                    Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos",
                    style: TextStyle(fontSize: 13),),
                  ],
                
                ),
              ),
            ),
            Row(
              children: [
               const  Padding(
                  padding:  EdgeInsets.all(10),
                  child:  Text("Quantity",
                  style: TextStyle(fontSize: 20,
                  fontWeight:FontWeight.w800,
                  ),
                  ),
                ),
                const SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      if(count>0){
                      count--;
                      }
                      setState(() {
                        
                      });
                    },
                    child: const Text("-",
                    style: TextStyle(fontSize: 40,
                    fontWeight: FontWeight.w800,),
                    
                    ),
                  ),
                ),
               const  SizedBox(width: 10,),
               Container(
                height: 30,
                width: 30,
                //decoration: BoxDecoration(
                 
                 // border:BoxBorder.shape(Colors.black),
                  //),
                
                
                child: Text("$count",
                style:const  TextStyle(fontSize: 25,
                fontWeight: FontWeight.w800),
                ),
                
               ),
               const  SizedBox(width: 10,),
               GestureDetector(
                onTap: () {
                
                  count++;
                  setState(() {
                    
                  });
                },
                  child:  const Text("+",
                  style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w800,
                  ),
                ),
               )

              
                
                
                
                  
                    
                    
                  
                            
                  
                
                
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10) ,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 16, 107)),
                  ),
                  onPressed: (){}, child: const Text("PURCHASE",
                  style: TextStyle(color: Colors.white,),),
                ),
              ),
            ),
            
            
          ],
        ),
      
    ),
    );
    
  }
  
}

