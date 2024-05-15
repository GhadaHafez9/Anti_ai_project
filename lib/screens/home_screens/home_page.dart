// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/home_screens/all_uploads.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/Profile.jpg',
              width: 40,
              height: 40,
              alignment: Alignment.center,
            ),
          ),
        ),
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
      body:Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 12)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/homevideo2.jpg',
                        width: 370,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 120,
                      child: RichText(
                        text: TextSpan(
                          text: 'How to use ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'AI',
                              style: TextStyle(
                                color: Color(0xff5E87E8),
                              ),
                            ),
                            TextSpan(
                              text: ' in a secured way?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.play_circle_outline_rounded,
                      size: 50,
                      color: Color(0xffDADADA),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff9BE5CB),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffDADADA),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffDADADA),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                height: 9,
              ),
              ListTile(
                title: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => All_Uploads()),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'My Uploads',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 175),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xffB5B5B5),
                        ),
                      ],
                    ),
    ),
                  ),
                  
                ),
              ],
            ),
          ),
        
      ),
    );
  }
}
