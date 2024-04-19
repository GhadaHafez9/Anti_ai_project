// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:anti_ai_project/screens/fillyourinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AfterOTP_Screen extends StatefulWidget {
  const AfterOTP_Screen({super.key});

  @override
  State<AfterOTP_Screen> createState() => _AfterOTP_ScreenState();
}

class _AfterOTP_ScreenState extends State<AfterOTP_Screen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds:400 ), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const FillInfo_Screen()));
    });

    super.initState();
  }

  final _formSignInkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5D71A0),
      appBar: AppBar(
        backgroundColor: Color(0xff5D71A0),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        //width: double.infinity,
        //height: double.infinity,
        child: Stack(children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Container(
              height: 47,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color(0xFFFFFFFF).withOpacity(0.20),
              ),
            ),
          ),
          Center(
            child: FractionallySizedBox(
              widthFactor: 1.2,
              heightFactor: 1.2,
              child: SvgPicture.asset(
                'assets/anti-ai logo.svg',
                fit: BoxFit.contain,
                color: Color(0xFFFFFFFF).withOpacity(0.03),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xff212131),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        //Positioned.fill(
//   child: Container(
//     decoration: BoxDecoration(
//      color: Color(0xff212131), 
//     ),
//     child: SvgPicture.asset(
//       'assets/anti-ai logo.svg', 
//       fit: BoxFit.cover,
//       color: Colors.white, 
//     ),
//   ),
// ),
                        
                        SizedBox(
                          height: 100,
                        ),

                        
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: SizedBox(
                              width: 276,
                              height: 47,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff07488A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  'Verify',
                                  style: TextStyle(
                                    color: Colors.white, // Set the text color
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //          FillInfo_Screen()),
                              // );
                            },
                            child: Text(
                              'Resend code ?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
