// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:anti_ai_project/screens/login_screen.dart';
import 'package:anti_ai_project/screens/otp.dart';
import 'package:anti_ai_project/screens/terms&condi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  final _formSignInkey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool isChecked = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

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
      ),
      body: Container(
        //width: double.infinity,
        //height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
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
                padding: const EdgeInsets.only(top: 110.0),
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
                            height: 10,
                          ),
                          Text(
                            "Create an account !",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "Sign up now and be a part of anti-ai community",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email address',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ), // Label
                                Container(
                                  color: Color(0xff1A1D21),
                                  padding: EdgeInsets.only(),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Email';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email address',
                                      hintStyle: const TextStyle(
                                       color: Color(0xff9B9C9E),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                         color: Color(0xff363A3D) ,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ), // Label
                                Container(
                                  color: Color(0xff1A1D21),
                                  child: TextFormField(
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                       suffixIcon: IconButton(
                                              icon: Icon(
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _passwordVisible =
                                                      !_passwordVisible;
                                                });
                                              },
                                            ),
                                      hintStyle: const TextStyle(
                                      color: Color(0xff9B9C9E),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                        color: Color(0xff363A3D)
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                        color: Color(0xff363A3D)
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1.0, vertical: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Confirm password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ), // Label
                                      Container(
                                       color: Color(0xff1A1D21),

                                        child: TextFormField(
                                          obscureText: !_passwordVisible,
                                          obscuringCharacter: '*',
                                          validator: (value) {
                                            if (value == null ||
                                                value.length < 11) {
                                              return 'Please enter Password';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Confirm your password',
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _passwordVisible =
                                                      !_passwordVisible;
                                                });
                                              },
                                            ),
                                            hintStyle: const TextStyle(
                                               color: Color(0xff9B9C9E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                               color: Color(0xff363A3D),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                             color: Color(0xff363A3D),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'I accept ',
                                          style: TextStyle(
                                            color: Color(0xff5E87E8),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TremsAndCondition()),
                                          );
                                        },
                                        child: Text(
                                          'terms & conditions',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Center(
                                  child: Text(
                                    "Or sign up with",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.apple_rounded,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.facebook_rounded,
                                      color: Color(0xff1877F2),
                                      size: 40,
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width:
                                          276, // Set the button width to fill the available space
                                      height: 47,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OTP_Screen()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff07488A),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                        ),
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Set the text color
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width: 276,
                                      height: 47,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    All_Screen()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff212131),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            side: BorderSide(
                                              color: Color(0xff07488A),
                                              width:
                                                  2.0, // Set the border width
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Set the text color
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Signup_Screen()),
                                      );
                                    },
                                    child: Text(
                                      'Continue as a guest ?',
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
