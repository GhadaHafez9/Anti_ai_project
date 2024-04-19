// import 'package:anti_ai_project/introscreen.dart';
// ignore_for_file: prefer_const_constructors
import 'package:anti_ai_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Splash_Screen(),
      // routes: {
      //   "/" :(context) => IntroScreen() ,
      // },
    );
  }
}

