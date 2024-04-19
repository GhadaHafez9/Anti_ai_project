// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff212131),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E),
        // img of the user //
        title: const Text(
          'Hello Ranim !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
        
        toolbarHeight: 90,
      ),
    );
  }
}