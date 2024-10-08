import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: const Text("NetFlix Demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 2,
           itemBuilder: (BuildContext context, int index) { 
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const  Padding(
                  padding:  EdgeInsets.all(10.0),
                  child:  Text("Action Movies :",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  
                  ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network("https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network("https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640"),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network("https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640"),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network("https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network("https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640"),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            );

           },
        ),
        backgroundColor: const Color.fromARGB(255, 43, 41, 41),
      ),
    );
  }
}
