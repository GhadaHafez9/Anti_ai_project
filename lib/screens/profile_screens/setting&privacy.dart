// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/profile_screens/profile.dart';
import 'package:anti_ai_project/screens/profile_screens/resetpass.dart';
import 'package:anti_ai_project/screens/registration/resetpass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingAndPrivacy_Screen extends StatefulWidget {
  const SettingAndPrivacy_Screen({super.key});

  @override
  State<SettingAndPrivacy_Screen> createState() =>
      _SettingAndPrivacy_ScreenState();
}

class _SettingAndPrivacy_ScreenState extends State<SettingAndPrivacy_Screen> {
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
              MaterialPageRoute(builder: (context) => Profile_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'Settings & Privacy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 85,
      ),
      body: Column(
        children: [
          Center(
            heightFactor: 1,
            child: Stack(
              children: [
                SizedBox(
                  height: 140,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          'assets/Profile.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 140,
                  width: 180,
                  bottom: -13,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/add-photo-camera.svg",
                        color: Colors.white,
                        height: 40,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ), // Label
                Container(
                  color: Color(0xff1A1D21),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.contains("@") == false) {
                        return 'Please valid Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Ranim',
                      hintStyle: const TextStyle(
                          color: Color(0xff9B9C9E),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff363A3D)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff363A3D)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ), // Label
                Container(
                  color: Color(0xff1A1D21),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: '@RanimAhmed',
                      hintStyle: const TextStyle(
                        color: Color(0xff9B9C9E),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff363A3D),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff363A3D)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 35,
              child: Icon(
                Icons.lock_outline_rounded,
                color: Color(0xff5E87E8),
                size: 25,
              ),
            ),
            title: Text(
              'Change your password',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Profile_ResetPass()));
            },
          ),
          SizedBox(
            height: 170,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                width: 335,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile_Screen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff07488A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
