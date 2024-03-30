// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PopularCourseCardWidget extends StatefulWidget {
  const PopularCourseCardWidget({super.key});

  @override
  State<PopularCourseCardWidget> createState() =>
      _PopularCourseCardWidgetState();
}

class _PopularCourseCardWidgetState extends State<PopularCourseCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 306,
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: Color(0xFF1C1C1C), borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset("sf/img/img2.png")),
              SizedBox(height: 10),
              Text(
                "High Contrast YouTube Thumbnail Youtube Thumbnails that Pop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 3),
              Text(
                "Design, Practical, Hands on, Youtube, PhotoPea...",
                style: TextStyle(
                    color: Color(0xFFBFBFBF),
                    fontSize: 11,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star_rounded, size: 27, color: Color(0xFFFFB108)),
                  SizedBox(width: 10),
                  Text(
                    "4.7 : (12345)",
                    style: TextStyle(
                        color: Color(0xFFBFBFBF),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee_rounded,
                          size: 23, color: Colors.white),
                      Text(
                        "799",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9D1FD),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Bestseller",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 11),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
