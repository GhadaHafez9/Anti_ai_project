// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/profile_screens/setting&privacy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile_ResetPass extends StatefulWidget {
  const Profile_ResetPass({super.key});

  @override
  State<Profile_ResetPass> createState() => _Profile_ResetPassState();
}

class _Profile_ResetPassState extends State<Profile_ResetPass> {
  final _formSignInkey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool isChecked = false;
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
              MaterialPageRoute(
                  builder: (context) => SettingAndPrivacy_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'Reset password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 85,
      ),
      body: Container(
        //width: double.infinity,
        //height: double.infinity,
        child: Stack(children: [
          SingleChildScrollView(
              child: Form(
            key: _formSignInkey,
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 5.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
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
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          hintStyle: const TextStyle(
                            color: Color(0xff9B9C9E),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff363A3D)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff363A3D)),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 1.0.w, vertical: 20.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ), // Label
                          Container(
                            color: Color(0xff1A1D21),
                            child: TextFormField(
                              obscureText: !_passwordVisible,
                              obscuringCharacter: '*',
                              validator: (value) {
                                if (value == null || value.length < 11) {
                                  return 'Please enter Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'At least 8 characters',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xff9B9C9E),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xff363A3D),
                                  ),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xff363A3D),
                                  ),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.0.w, vertical: 20.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm new password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ), // Label
                                Container(
                                  color: Color(0xff1A1D21),
                                  child: TextFormField(
                                    obscureText: !_passwordVisible,
                                    obscuringCharacter: '*',
                                    validator: (value) {
                                      if (value == null || value.length < 11) {
                                        return 'Please enter Password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'At least 8 characters',
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
                                      hintStyle: TextStyle(
                                          color: Color(0xff9B9C9E),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff363A3D),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 240.h,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width: 335.w,
                                      height: 47.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SettingAndPrivacy_Screen()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff07488A),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                          ),
                                        ),
                                        child: Text(
                                          'Update Password',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.sp,
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
            ]),
          )),
        ]),
      ),
    );
  }
}
