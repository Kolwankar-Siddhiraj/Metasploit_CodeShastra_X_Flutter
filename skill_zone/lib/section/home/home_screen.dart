// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skill_zone/section/home/continue_course_card.dart';
import 'package:skill_zone/section/home/popular_course_card.dart';
import 'package:skill_zone/section/global/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFf050505),
      appBar: AppBar(
        backgroundColor: Color(0xFf050505),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Jay Rajput",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Explore your interests and passions with us",
                  style: TextStyle(
                      color: Color(0xFFBFBFBF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xFF3D3D3D)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("sf/img/coin.png", height: 21),
                  Text(
                    "7.3k",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // home
      body: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1C1C1C)),
            child: Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                cursorColor: Color(0xFFB0B0B0),
                style: TextStyle(color: Color(0xFFB0B0B0)),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search any course",
                  hintStyle: TextStyle(
                      color: Color(0xFFB0B0B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search_rounded,
                      size: 27,
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // continue watching
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Continue Learning",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        ContinueCourseCardWidget(),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),

                  // popular courses
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Popular Courses",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),

                  // recommeded courses
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Recommended for you",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        PopularCourseCardWidget(),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      // botton navigation bar
      bottomNavigationBar: BottomNavBarWidget()
    );
  }
}
