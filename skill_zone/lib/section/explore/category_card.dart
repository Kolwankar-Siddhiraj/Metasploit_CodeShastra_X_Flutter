// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoryCardWidget extends StatefulWidget {
  const CategoryCardWidget({super.key});

  @override
  State<CategoryCardWidget> createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    color: Color(0xFF1C1C1C),
                    borderRadius: BorderRadius.circular(5)),
                child: Image.asset("sf/img/ai.png", fit: BoxFit.cover),
              ),
              SizedBox(height: 5),
              Center(
                child: Text("Artificial intelligent",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 11)),
              )
            ],
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
