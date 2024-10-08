import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Program7 extends StatelessWidget{
  const Program7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
       
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              
                
                 
                    
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",fit: BoxFit.cover,),
                      ),
                    
                  SizedBox(height: 20,),
                  Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",fit: BoxFit.cover,),
                      ),
                    
                  SizedBox(height: 20,),
                  Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",fit: BoxFit.cover,),
                      ),
                    
                  SizedBox(height: 20,),
                  Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",fit: BoxFit.cover,),
                      ),
                    
                  SizedBox(height: 20,),
                  Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",fit: BoxFit.cover,),
                      ),
                    
                  SizedBox(height: 20,),
                  
                  
                    ]
                  
                
                       
                       ),
           ),
        );
      
  
  }

}