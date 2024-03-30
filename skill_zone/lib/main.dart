// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skill_zone/section/home/home_screen.dart';
import 'package:skill_zone/section/web3/metamask_connect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
    //   home: HomeScreen(),
      home: ConnectWallet(),
    );
  }
}

