// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:anti_ai_project/screens/home_screens/all_uploads.dart';
import 'package:anti_ai_project/screens/home_screens/real_uploads.dart';
import 'package:flutter/material.dart';

class Fake_Uploads extends StatefulWidget {
  const Fake_Uploads({super.key});

  @override
  State<Fake_Uploads> createState() => _Fake_UploadsState();
}

class _Fake_UploadsState extends State<Fake_Uploads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
         elevation: 0,
         leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => All_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'My Uploads',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 80,
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff212131),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(
                    color: Color(0xff07488A),
                    width: 1.0,
                  ),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => All_Uploads()),
                 );
              },
              child: Text(
                'All',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 15),
ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff212131),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(
                    color: Color(0xff07488A),
                    width: 1.0,
                  ),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Real_Uploads()),
              );
              },
              child: Text(
                'Real',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
             SizedBox(width: 15),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff07488A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Fake_Uploads()),
              );
              },
              child: Text(
                ' Fake ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
