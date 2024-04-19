// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:anti_ai_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FillInfo_Screen extends StatefulWidget {
  const FillInfo_Screen({super.key});

  @override
  State<FillInfo_Screen> createState() => _FillInfo_ScreenState();
}

class _FillInfo_ScreenState extends State<FillInfo_Screen> {
  final _formSignInkey = GlobalKey<FormState>();

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
                            height: 20,
                          ),
                          Text(
                            "Fill your information",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Center(
                            child: Text(
                              "To continue, Fill your information first ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
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
                                      hintText: 'Enter a username',
                                      hintStyle: const TextStyle(
                                       color: Color(0xff9B9C9E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D) // Default border color
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D) // Default border color
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
                                horizontal: 20.0, vertical: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Phone Number ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                IntlPhoneField(
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                     color: Color(0xff9B9C9E),
                                       fontSize: 16,
                                      fontWeight: FontWeight.w500
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
                                    labelText: 'Enter your phone number',
                                  ),
                                  // initialCountryCode:
                                  //     'Egypt', 
                                  // onChanged: (phone) {
                                  //   print(phone.completeNumber); 
                                  // },
                                ),
                              ],
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
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Signup_Screen()),
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
                                          'Sign Up',
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
