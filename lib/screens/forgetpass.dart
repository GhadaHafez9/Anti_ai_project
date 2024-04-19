// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:anti_ai_project/screens/fortgetpassverify.dart';
import 'package:anti_ai_project/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPassword_Screen extends StatefulWidget {
  const ForgetPassword_Screen({super.key});

  @override
  State<ForgetPassword_Screen> createState() => _ForgetPassword_ScreenState();
}

class _ForgetPassword_ScreenState extends State<ForgetPassword_Screen> {
  final _formSignInkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5D71A0),
      appBar: AppBar(
        backgroundColor: Color(0xff5D71A0),
        elevation: 0,
         leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Login_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        
      ),
      body: Container(
        //width: double.infinity,
        //height: double.infinity,
        child: Stack(
          children: [
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
                          Text(
                            "Forgot your password ?",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Center(
                            child: Text(
                              "Enter your email address",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 85.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email address ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                 // Label
                                SizedBox(height: 10,),
                                Container(
                                   color: Color(0xff1A1D21),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.contains("@") == false) {
                                        return 'Please valid Email';
                                      }
                                      return null;
                                    },
                                    style: TextStyle(color: Colors.white),
                                    cursorColor:  Color(0xff1A1D21) ,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email address',
                                      hintStyle: const TextStyle(
                                       color: Color(0xff9B9C9E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                      
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                         color: Color(0xff363A3D) 
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D) 
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 100,),
                          Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width:
                                          276, 
                                      height: 47,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => 
                                                ForgetPass_Verify()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff07488A),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            side: BorderSide(
                                              color: Color(0xff07488A),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                            color: Colors
                                                .white,
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
        ),
                ),
              ),
            
        )],
        ),
      ),
    );
  }
}