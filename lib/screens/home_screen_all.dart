// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/alert_screens/alert.dart';
import 'package:anti_ai_project/screens/community.dart';
import 'package:anti_ai_project/screens/profile_screens/profile.dart';
import 'package:anti_ai_project/screens/upload.dart';
import 'package:flutter/material.dart';

import 'home_screens/home_page.dart';

class All_Screen extends StatefulWidget {
  const All_Screen({super.key});

  @override
  State<All_Screen> createState() => _All_ScreenState();
}

class _All_ScreenState extends State<All_Screen> {
  int _currentIndex = 0;
  
  final List<Widget> pages = [
    Home_Page(),
     Community_Screen(), 
     Upload_Screen(),
      AlertScreen(),
     Profile_Screen()];  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      
      body:pages [_currentIndex],
      bottomNavigationBar:
         BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
           backgroundColor: Color(0xFF181825),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home" ,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people  ),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Icon(Icons.add_circle , color: Color(0xff66B2FF), size:58,),
              ),
              label:"",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications ),
              label: " Alert",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person ),
              label: "Profile",
              
            ),
          ],
          
         
        ),
      
      





      
    );
  }
}