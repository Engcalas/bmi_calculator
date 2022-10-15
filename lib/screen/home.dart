import 'dart:ui';

import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screen/home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: cartreused(
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('MALE'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: cartreused(
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('MALE'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: cartreused(
            child: Column(
              children: [
                Icon(Icons.add),
                Text('Female'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: cartreused(
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('MALE'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: cartreused(
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('MALE'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class cartreused extends StatelessWidget {
  final Widget child;
  cartreused({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: KActiveCardColour,
      ),
      // width: 200,
      // height: 200,
    );
  }
}
