import 'package:assignment1/program1.dart';
import 'package:assignment1/program10.dart';
import 'package:assignment1/program2.dart';
import 'package:assignment1/program3.dart';
import 'package:assignment1/program4.dart';
import 'package:assignment1/program5.dart';
import 'package:assignment1/program6.dart';
import 'package:assignment1/program7.dart';
import 'package:assignment1/program8.dart';
import 'package:assignment1/program9.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Program10(),
    );
  }
}
