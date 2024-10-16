import 'package:flutter/material.dart';
import 'package:ratingandreviews/1.dart';
import 'package:ratingandreviews/2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Travel(),
    );
  }
}
