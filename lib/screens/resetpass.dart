// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:anti_ai_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword_Screen extends StatefulWidget {
  const ResetPassword_Screen({super.key});

  @override
  State<ResetPassword_Screen> createState() => _ResetPassword_ScreenState();
}

class _ResetPassword_ScreenState extends State<ResetPassword_Screen> {
  final _formSignInkey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool isChecked = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5D71A0),
      appBar: AppBar(
        backgroundColor: Color(0xff5D71A0),
        elevation: 0,
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
                            height: 10,
                          ),
                          Text(
                            "Change your password",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New password',
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
                                      hintText: 'Enter new password',
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
                                      horizontal: 1.0, vertical: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Confirm new password',
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
                                            hintText: 'Confirm new password',
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
                                      SizedBox(height: 105,),
                                       Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width:
                                          276, 
                                      height: 47,
                                      child: ElevatedButton(
                                        onPressed: () {
                                         Navigator.push(
                                          context , 
                                           MaterialPageRoute(
                                            builder: (context) =>
                                           Signup_Screen()
                                              ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(
                                              0xff07488A),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                        ),
                                        child: Text(
                                          'Save',
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