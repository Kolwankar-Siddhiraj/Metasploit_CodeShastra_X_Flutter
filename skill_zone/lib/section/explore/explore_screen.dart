// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skill_zone/section/explore/category_card.dart';
import 'package:skill_zone/section/home/continue_course_card.dart';
import 'package:skill_zone/section/home/popular_course_card.dart';
import 'package:skill_zone/section/global/bottom_navbar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
                    "Explore Courses",
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
                            "Categories",
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
                          CategoryCardWidget(),
                          CategoryCardWidget(),
                          CategoryCardWidget(),
                          CategoryCardWidget(),
                          CategoryCardWidget(),
                          CategoryCardWidget(),
                          CategoryCardWidget(),
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
        bottomNavigationBar: BottomNavBarWidget());
  }
}
