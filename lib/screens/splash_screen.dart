// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:anti_ai_project/screens/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 10),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 5,
                  heightFactor: 1,
                  child: SvgPicture.asset(
                    'assets/only-logo.svg',
                    fit: BoxFit.contain,
                    color: Color(0xFFFFFFFF).withOpacity(0.03),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(0.20),
                child: SvgPicture.asset(
                  'assets/anti-ai logo.svg',
                  height: 350,
                  width: 300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
