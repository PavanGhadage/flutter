import 'package:flutter/material.dart';

void main() {
  runApp(const InstaApp());
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      home: Scaffold(
         appBar:AppBar(
          title: const Text("instastories"),
          centerTitle:true,
          backgroundColor: Colors.blue,
         ),
        body: Center(
          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child:Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.blue,shape: BoxShape.circle,
                  ),
               // chil:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7_J8XFD3B3PfRODKp6grV6zKzK2vgulHCbw&s"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.amber,shape: BoxShape.circle,
                  ),
                ),
                 Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.amber,shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}
