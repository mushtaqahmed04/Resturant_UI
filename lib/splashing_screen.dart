import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/signupscreen.dart';

class SplashingScreen extends StatefulWidget {
  const SplashingScreen({super.key});

  @override
  State<SplashingScreen> createState() => _SplashingScreenState();
}

class _SplashingScreenState extends State<SplashingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (constant) => Signupscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Center(
        child: Image.asset("assets/images/Group 270.png"),
      ),
    );
  }
}
