import 'package:containerassignment2/program1.dart';
import 'package:containerassignment2/program2.dart';
import 'package:containerassignment2/program3.dart';
import 'package:containerassignment2/program4.dart';
import 'package:containerassignment2/program5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Program5(),
    );
  }
  
  
}
