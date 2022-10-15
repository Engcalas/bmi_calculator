// import 'package:flutter/cupertino.dart';
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:bmi_calculator/screen/home.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff111328),
      ),
      home: HomeScreen(),
    );
  }
}
