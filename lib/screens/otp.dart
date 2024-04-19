// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/afterotp_screen.dart';
import 'package:anti_ai_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class OTP_Screen extends StatefulWidget {
  const OTP_Screen({super.key});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
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
              MaterialPageRoute(builder: (context) => Signup_Screen()),
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
                    color:Color(0xff212131),
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
                            "OTP",
                            style: TextStyle(
                              color: Color(0xff5E87E8),
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Center(
                            child: Text(
                              "Enter the 6 digit code sent on your email for ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                          ),
                          Text(
                            " Verification ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                            SizedBox(width: 20,),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 30,
                                    child: TextFormField(
                                      onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                      style: Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                        ],
                                    ),
                                  
                                  ),
                              SizedBox(
                                width: 30,
                                child: TextFormField(
                                  onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                    ],
                                ),
                              
                              ),
                              
                              SizedBox(
                                width: 30,
                                child: TextFormField(
                                  onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                    ],
                                ),
                              
                              ),
                              
                              SizedBox(
                                width: 30,
                                child: TextFormField(
                                  onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                    ],
                                ),
                              
                              ),
                              
                              SizedBox(
                                width: 30,
                                child: TextFormField(
                                  onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                    ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                child: TextFormField(
                                  onChanged:(value) {
                                        if (value.length ==1 ){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      } ,
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                    ],
                                ),
                              
                              ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 230,
                          ),
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
                                              AfterOTP_Screen()),
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
                                          'Verify',
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
                                SizedBox(height: 15,),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //          FillInfo_Screen()),
                                      // );
                                    },
                                    child: Text(
                                      'Resend code ?',
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
                  ),



              ),
            ),
        ),
      ]),
    ),
    );

  }
}