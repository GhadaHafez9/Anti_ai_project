// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'profile.dart';

class ContactUs_Screen extends StatefulWidget {
  const ContactUs_Screen({super.key});

  @override
  State<ContactUs_Screen> createState() => _ContactUs_ScreenState();
}

class _ContactUs_ScreenState extends State<ContactUs_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
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
          'Contact Us',
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
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "If you have any questions, Don’t hesitate & contact us",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 330,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2.0,
                          height: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                              borderSide:
                                  const BorderSide(color: Color(0xff363A3D)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Your message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 100,
                        color: Color(0xff1A1D21),
                        child: TextFormField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            hintText: 'Type your message here',
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
                              borderSide:
                                  const BorderSide(color: Color(0xff363A3D)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.phone_in_talk_rounded,
                            color: Color(0xff5E87E8),
                            size: 35,
                          ),
                        ),
                        title: Text(
                          'Contact numbers : ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "01553453177 - 01004322437",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 170,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SizedBox(
                            width: 330,
                            height: 47,
                            child: ElevatedButton(
                              onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Color(0xff212131),
                                  content: Container(
                                    width: 188,
                                    height: 173,
                                    child: SvgPicture.asset(
                                      "assets/okay-image.svg",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: Text("Your message has been sent",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      ),
                                    ),
                                    Center(
                                      child: Text("successfully",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                      )
                                      ),
                                    ),
                                  ],
                                );
                              },
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
            ),
          ]),
        ),
      ]),
    );
  }
}
