

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
        
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();

}
class _QuizAppState extends State {
  List<Map> questionList=[{
    "qustion":"1)Who Is Current Capatain Of India ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","KL Rahul"],
    "correct":0,
  },
  {
    "qustion":"2)Who Is Current Previous Captain Of India ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","KL Rahul"],
    "correct":1,

  },
  {
    "qustion":"3)Who Is Richest Cricketer Of India ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","KL Rahul"],
    "correct":1,
  },
  {
    "qustion":"4)Who Is Current Captain Of CSK ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","KL Rahul"],
    "correct":2,
  },
  {
    "qustion":"5)Who Is Current Capatain Of LUCKNOW ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","KL Rahul"],
    "correct":3,
  },
  {
    "qustion":"6)Who Has Most Centuries In Intl Cric ?",
    "option":["Rohit Sharma","Virat Kohli","MS Dhoni","Sachin Tendulkar"],
    "correct":3,
  },
  ];
  
  int correctans=0;
  int selectedindex=-1;
  int yourScore=0;
  WidgetStateProperty<Color?> checkans(int ansindex){
    if(selectedindex!=-1){
      if(ansindex==questionList[correctans]["correct"]){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectedindex==ansindex){
        return  const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }

  }
  int nextpage=0;
  @override
  Widget build(BuildContext context) {
      
 return  isQustionpage();
  }
  Scaffold isQustionpage(){
    if(nextpage==0){
      return  Scaffold(
        appBar: AppBar(),
        body:Center(
          child:ElevatedButton(onPressed:
           (){
           // yourScore=0;
            nextpage=1;
            //correctans=0;
            //selectedindex=-1;
            setState(() {}
            );
           },
           
           child:const Text("StartQuiz",
           style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
           ),)
           ),
           
           ),
        
        );
       // backgroundColor: Colors.black,
    
    }
    else if(nextpage==1){
      return Scaffold(
      
      appBar: AppBar(
        title: const Text("QuizApp",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.black87,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(width: 130,),
              Text("Question : ${correctans+1}/${questionList.length}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 12, 11, 8),

              ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
           SizedBox(
            height: 50,
            width: 400,

            child:Text( questionList[correctans]["qustion"],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.brown,
            ),

          ),
      ),
      
       const SizedBox(
        height: 20,),
        SizedBox(
          height: 50,
          width: 500,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkans(0),
            ),
            onPressed: (){
              if(selectedindex==-1){
                selectedindex=0;
              }
              setState(() {
            
          });

            },
             child: Text("A.${questionList[correctans]["option"][0]}",
             style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
             ),
          )
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
          height: 50,
          width: 500,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkans(1),
            ),
            onPressed: (){
              if(selectedindex==-1){
                selectedindex=1;
              }
              setState(() {
            
          });

            },
             child: Text("B.${questionList[correctans]["option"][1]}",
             style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,),

          )
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
          height: 50,
          width: 500,
          child: ElevatedButton(
            
            style: ButtonStyle(
              backgroundColor: checkans(2),
            ),
            
            onPressed: (){
              if(selectedindex==-1){
                selectedindex=2;
              }
              setState(() {
            
          }
          );

            },
             child: Text("C.${questionList[correctans]["option"][2]}",
             style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,),
          )
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
          height: 50,
          width: 500,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkans(3),
            ),
            
            onPressed: (){
              if(selectedindex==-1){
                selectedindex=3;
              }
              setState(() {
            
          });

            },
             child: Text("D.${questionList[correctans]["option"][3]}",
             style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,),
          )
          ),
        ),
           
           
           
        ]

        
      ), 
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         
          if(selectedindex!=-1){
             if(selectedindex==questionList[correctans]["correct"]){
            yourScore++;
          }

          if(correctans<questionList.length-1){
            correctans++;
            
          }
          else{
            nextpage=2;

          }
          selectedindex=-1;
          setState(() {
            
          });
          }
          
          
      },
      backgroundColor: Colors.blue,
      child:const Icon(Icons.forward),
      
      ),
      
    );

    
     
      
    }else {
      return  Scaffold(
        appBar: AppBar(
          title: const Text("Result" ,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,

          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              (yourScore>2)?Container(
                height: 300,
                width: 300,
                decoration:const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi5L9TcOhjTtz_0onYANoJeJHxW1SbXg9cBA&s")
                  )
                ),  
               
                ):Container(
                height: 300,
                width: 300,
                decoration:const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://t4.ftcdn.net/jpg/05/08/38/47/360_F_508384795_AaOb8TQgvq6BqOCbMXtAgEKZJofEXPOn.jpg")
                  ),
                ),
                
                ),
             
              
          
           (yourScore<2)? const Text("Better Luck Nexttime ",style:  TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w800,
           ),):const Text("Congratulation !!!",
           style:TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                     color: Colors.brown,
           ),
           ),
           Text("Your Score:$yourScore/${questionList.length}",
           style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
           ),
           ),
           ElevatedButton(onPressed: (){
            yourScore=0;
            nextpage=0;
            correctans=0;
            selectedindex=-1;
            setState(() {
              
            });

           }, child: const Text("Reset",
           style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
           ),)
           )
              
            ],
             
            
            
          ),
          ),

        );
    }
  }
  
  
    
     
}