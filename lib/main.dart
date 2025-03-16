import 'package:flutter/material.dart';
import 'package:resturant/splashing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(233, 84, 34, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashingScreen(),
    );
  }
}

