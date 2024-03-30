// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ContinueCourseCardWidget extends StatefulWidget {
  const ContinueCourseCardWidget({super.key});

  @override
  State<ContinueCourseCardWidget> createState() =>
      _ContinueCourseCardWidgetState();
}

class _ContinueCourseCardWidgetState extends State<ContinueCourseCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 124,
          width: 306,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xFF1C1C1C)),
          child: Row(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  decoration: BoxDecoration(
                    //   border: Border.all(width: 1.6, color: Color(0xFF3D3D3D)),
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset("sf/img/img1.png", fit: BoxFit.cover)),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 18,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artificial intelligent for \nbeginners",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "By Siddhiraj K",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Lec 13/20 : 75 min remaining",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    LinearPercentIndicator(
                      padding: EdgeInsets.all(0),
                      lineHeight: 5,
                      percent: 0.75,
                      backgroundColor: Color.fromARGB(95, 55, 81, 166),
                      progressColor: Color(0xFFB9D1FD),
                      barRadius: Radius.circular(7),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
