// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/alert_screens/alert.dart';
import 'package:anti_ai_project/screens/community/community.dart';
import 'package:anti_ai_project/screens/profile_screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screens/home_page.dart';
import 'upload_screen/detectfakeimg.dart';

class All_Screen extends StatefulWidget {
  const All_Screen({super.key});

  @override
  State<All_Screen> createState() => _All_ScreenState();
}

class _All_ScreenState extends State<All_Screen> {
  int _currentIndex = 0;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Container(
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              padding: EdgeInsets.only(bottom: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetectFakeImage()),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Color(0xffCFCFCF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.photo_library_outlined,
                            color: Color(0xff5E87E8),
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetectFakeAudio()),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Color(0xffCFCFCF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.multitrack_audio_rounded,
                            color: Color(0xff5E87E8),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Audio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetectFakeVideo()),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Color(0xffCFCFCF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.slow_motion_video_sharp,
                            color: Color(0xff5E87E8),
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Videos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  final List<Widget> pages = [
    Home_Page(),
    Community_Screen(),
    DetectFakeImage(),
    AlertScreen(),
    Profile_Screen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            _showBottomSheet(context);
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        backgroundColor: Color(0xFF181825),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Icon(
                Icons.add_circle,
                color: Color(0xff66B2FF),
                size: 58,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: " Alert",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
