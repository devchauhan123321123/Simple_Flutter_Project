//import 'package:code_input_app/sliderexample.dart';
import 'package:flutter/material.dart';
import 'package:code_input_app/aclenderexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Aclenderexample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
