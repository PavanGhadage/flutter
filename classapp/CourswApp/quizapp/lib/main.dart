

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
    "qustion":"2)Who Is  Previous Captain Of India ?",
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
  if(nextpage == 0){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF008080), // Teal for AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              child: Image.network("https://c8.alamy.com/comp/JWXPK4/big-quiz-poster-leaflet-JWXPK4.jpg"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                nextpage = 1;
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF7043), // Orange for "Start Quiz" button
              ),
              child: const Text(
                "StartQuiz",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5), // Light gray background
    );
  }
  else if(nextpage == 1) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QuizApp",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF008080), // Teal AppBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Row(
            children: [
              const SizedBox(width: 130,),
              Text(
                "Question : ${correctans+1}/${questionList.length}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333), // Dark gray for text
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 50,
            width: 400,
            child: Text(
              questionList[correctans]["qustion"],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.brown,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          // Option buttons with color changes for correct and incorrect answers
          SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkans(0), // Dynamic background for correct/incorrect
              ),
              onPressed: () {
                if (selectedindex == -1) {
                  selectedindex = 0;
                }
                setState(() {});
              },
              child: Text(
                "A.${questionList[correctans]["option"][0]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkans(1), // Dynamic background for correct/incorrect
              ),
              onPressed: () {
                if (selectedindex == -1) {
                  selectedindex = 1;
                }
                setState(() {});
              },
              child: Text(
                "B.${questionList[correctans]["option"][1]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
             SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkans(2), // Dynamic background for correct/incorrect
              ),
              onPressed: () {
                if (selectedindex == -1) {
                  selectedindex = 2;
                }
                setState(() {});
              },
              child: Text(
                "C.${questionList[correctans]["option"][2]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 30,),
             SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkans(3), // Dynamic background for correct/incorrect
              ),
              onPressed: () {
                if (selectedindex == -1) {
                  selectedindex = 3;
                }
                setState(() {});
              },
              child: Text(
                "D.${questionList[correctans]["option"][3]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          
          // Repeat for other options...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedindex != -1) {
            if (selectedindex == questionList[correctans]["correct"]) {
              yourScore++;
            }

            if (correctans < questionList.length - 1) {
              correctans++;
            }
            else {
              nextpage = 2;
            }
            selectedindex = -1;
            setState(() {});
          }
        },
        backgroundColor: Color(0xFFFF7043), // Orange floating action button
        child: const Icon(Icons.forward),
      ),
    );
  }
  else {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF008080), // Teal AppBar for result page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (yourScore > 2)
              ? Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi5L9TcOhjTtz_0onYANoJeJHxW1SbXg9cBA&s"),
                    ),
                  ),
                )
              : Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://t4.ftcdn.net/jpg/05/08/38/47/360_F_508384795_AaOb8TQgvq6BqOCbMXtAgEKZJofEXPOn.jpg"),
                    ),
                  ),
                ),
            (yourScore < 2)
              ? const Text(
                  "Better Luck Nexttime",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                  ),
                )
              : const Text(
                  "Congratulation !!!",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: Colors.brown,
                  ),
                ),
            Text(
              "Your Score: $yourScore/${questionList.length}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                yourScore = 0;
                nextpage = 0;
                correctans = 0;
                selectedindex = -1;
                setState(() {});
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
}