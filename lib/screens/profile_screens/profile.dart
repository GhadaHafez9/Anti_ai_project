// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:anti_ai_project/screens/registration/login_screen.dart';
import 'package:anti_ai_project/screens/profile_screens/aboutus.dart';
import 'package:anti_ai_project/screens/profile_screens/contactus.dart';
import 'package:anti_ai_project/screens/profile_screens/setting&privacy.dart';
import 'package:anti_ai_project/screens/profile_screens/terms&policy.dart';
import 'package:anti_ai_project/screens/registration/terms&condi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  final _formSignInkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xff212131),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => All_Screen()),
            );
          },
        ),
      ),

      backgroundColor: Color(0xff212131),
      body: Container(
        
        child: Stack(fit: StackFit.expand, children: [
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
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
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
                SizedBox(height: 10),
                Text(
                  'Ranim Ahmed',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xff38384D),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xff5E87E8),
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  'Settings & Privacy',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_outlined),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SettingAndPrivacy_Screen()));
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.language_outlined,
                                    color: Color(0xff5E87E8),
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  'Language',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_outlined),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        width: 200,
                                        height: 200,
                                        child: AlertDialog(
                                          backgroundColor: Color(0xff212131),
                                          title: Text(
                                              'Choose Application Language'),
                                          actions: [
                                            
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xff5E87E8),
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  'Terms & Policy',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_outlined),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TremsAndPolicy()));
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.contact_support_outlined,
                                    color: Color(0xff5E87E8),
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  'About Us',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_outlined),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AboutUs_Screen()));
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.contact_phone_outlined,
                                    color: Color(0xff5E87E8),
                                    size: 30,
                                  ),
                                ),
                                title: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_outlined),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ContactUs_Screen()));
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                  leading: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCFCFCF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.logout_outlined,
                                      color: Color(0xff5E87E8),
                                      size: 35,
                                    ),
                                  ),
                                  title: Text(
                                    'Log out',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_outlined),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return FractionallySizedBox(
                                          widthFactor: 300,
                                          child: AlertDialog(
                                            iconColor: Color(0xff37425E80),
                                            title: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Log out',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 24,
                                                    ),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Do you want to log out from your ',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(
                                                    "profile ? ",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 17,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            content: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Login_Screen()),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xff07488A),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    minimumSize: Size(150, 40),
                                                  ),
                                                  child: Text(
                                                    'Log out',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Profile_Screen()),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xff212131),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                        color:
                                                            Color(0xff07488A),
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    minimumSize: Size(150, 40),
                                                  ),
                                                  child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }),
                            ],
                          ),
                        )
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
