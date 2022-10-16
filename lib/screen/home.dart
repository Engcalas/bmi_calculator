import 'dart:ui';

import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/screen/result.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screen/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double heigth = 180;
  int weight = 65;
  int age = 20;
  int gender = 1;
  void _goToResult_screen() {
    double _result = weight / pow(heigth / 100, 2);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => resultscreen(
          result: _result,
        ),
      ),
    );
  }

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
                  selected: gender == 1 ? true : false,
                  onpressed: () {
                    setState(() {
                      gender = 1;
                    });
                  },
                  child: Iconcontent(
                    iconData: FontAwesomeIcons.mars,
                    title: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: cartreused(
                  selected: gender == 2 ? true : false,
                  onpressed: () {
                    setState(() {
                      gender = 2;
                    });
                  },
                  child: Iconcontent(
                    iconData: FontAwesomeIcons.venus,
                    title: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: cartreused(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HEIGHT",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    heigth.round().toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "cm",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: KBctiveCardColour,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 16,
                    )),
                child: Slider(
                  value: heigth,
                  min: 10,
                  max: 310,
                  onChanged: (newval) {
                    setState(() {
                      heigth = newval;
                      print(heigth);
                    });
                  },
                ),
              )
            ],
          )),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WEIGHT",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "kg",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Roundedbotton(
                          iconData: Icons.remove,
                          onpressed: () {
                            setState(() {
                              weight--;
                            });
                            print("remove bottun clicked");
                          },
                        ),
                        const SizedBox(width: 10),
                        Roundedbotton(
                          iconData: Icons.add,
                          onpressed: () {
                            setState(() {
                              weight++;
                            });
                            print("Add bottun clicked");
                          },
                        ),
                      ],
                    )
                  ],
                )),
              ),
              Expanded(
                child: cartreused(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGE",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "yrs",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Roundedbotton(
                          iconData: Icons.remove,
                          onpressed: () {
                            setState(() {
                              age--;
                            });
                            print("remove bottun clicked");
                          },
                        ),
                        const SizedBox(width: 10),
                        Roundedbotton(
                          iconData: Icons.add,
                          onpressed: () {
                            setState(() {
                              age++;
                            });
                            print("Add bottun clicked");
                          },
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            _goToResult_screen();
          },
          child: Text(
            "CALCULATE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          fillColor: KBctiveCardColour,
          constraints: BoxConstraints.tightFor(
            width: double.infinity,
            height: 56,
          ),
        )
      ]),
    );
  }
}

class Roundedbotton extends StatelessWidget {
  final IconData iconData;
  final Function()? onpressed;
  Roundedbotton({required this.iconData, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Icon(
        iconData,
        size: 40,
      ),
      fillColor: Colors.grey,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}

class Iconcontent extends StatelessWidget {
  final IconData iconData;
  final String title;
  Iconcontent({required this.iconData, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 80),
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}

class cartreused extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onpressed;
  cartreused({required this.child, this.selected = false, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selected == true ? KActiveCardColour : KIctiveCardColour,
        ),
        // width: 200,
        // height: 200,
      ),
    );
  }
}
