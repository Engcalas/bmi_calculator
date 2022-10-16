import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class resultscreen extends StatelessWidget {
  final double result;
  const resultscreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          result.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
