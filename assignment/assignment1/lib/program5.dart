import 'package:flutter/material.dart';

class Program5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
              fit: BoxFit.cover,),
            ),
            SizedBox(height: 10),
             Container(
              height: 150,
              width: 150,
              child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
              fit: BoxFit.cover,),
            ),
            SizedBox(height: 10),
             Container(
              height: 150,
              width: 150,
              child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
              fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
  
}