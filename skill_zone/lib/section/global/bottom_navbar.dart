// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skill_zone/section/explore/explore_screen.dart';
import 'package:skill_zone/section/home/home_screen.dart';
import 'package:skill_zone/section/global/config.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF1C1C1C),
      selectedItemColor: Color(0xFFB9D1FD),
      unselectedItemColor: Color(0xFFBFBFBF),
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public_rounded),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_rounded),
          label: 'My Learning',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download_for_offline),
          label: 'Download',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (current) {
        if (currentIndex != current) {
          setState(() {
            currentIndex = current;
          });
          switch (currentIndex) {
            case 0:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
              break;

            case 1:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return ExploreScreen();
              }));
              break;

            default:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
              break;
          }
        }
      },
    );
  }
}
