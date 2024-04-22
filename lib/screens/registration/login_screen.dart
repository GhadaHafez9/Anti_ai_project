// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:anti_ai_project/screens/registration/forgetpass.dart';
import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:anti_ai_project/screens/onboardingscreen.dart';
import 'package:anti_ai_project/screens/registration/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _formSignInkey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  bool rememberPassword = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //     SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //      statusBarBrightness: Brightness.dark,
    //      statusBarColor: Colors.transparent,
    //   ),
    // );
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
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
            );
          },
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        //width: double.infinity,
        //height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 10),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 2,
                  heightFactor: 1.7,
                  child: SvgPicture.asset(
                    'assets/only-logo.svg',
                    fit: BoxFit.contain,
                    color: Color(0xFFFFFFFF).withOpacity(0.03),
                  ),
                ),
              ),
            ),
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
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(0.20),
                child: SvgPicture.asset(
                  'assets/anti-ai logo.svg',
                  height: 175,
                  width: 250,
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
                            height: 10,
                          ),
                          Text(
                            "Welcome back !",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "Login so you can benefit from our application",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
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
                                      hintText: 'Enter your email address',
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
                                        borderSide: const BorderSide(
                                            color: Color(0xff363A3D)),
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
                                    fontWeight: FontWeight.normal,
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
                                            color: Color(0xff363A3D)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff363A3D)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: rememberPassword,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              rememberPassword = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Remember me',
                                          style: TextStyle(
                                            color: Color(0xff686B6E),
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgetPassword_Screen()),
                                        );
                                      },
                                      child: Text(
                                        'Forgot password ?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
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
                                    SizedBox(
                                      width: 10,
                                    ),
                                    // ShaderMask(
                                    //   shaderCallback: (bounds) =>
                                    //       createGradientShader(bounds),
                                    //   child: Icon(
                                    //     MaterialCommunityIcons.google,
                                    //     size: 40,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),
                                  ],
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width: 276,
                                      height: 47,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    All_Screen()),
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
                                          'Login',
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
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Signup_Screen()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff212131),
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
                                          'Sign Up',
                                          style: TextStyle(
                                            color: Colors.white,
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
                                               All_Screen()),
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


//   Shader createGradientShader(Rect bounds) {
//   return LinearGradient(
//     colors: [Color(0xffEA4335), Color(0xffFBBC05), Color(0xff34A853), Color(0xff4285F4)],
//   ).createShader(bounds);
// }
}
