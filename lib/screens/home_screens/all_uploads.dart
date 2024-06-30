// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:anti_ai_project/screens/home_screens/fake_uploads.dart';
import 'package:anti_ai_project/screens/home_screens/real_uploads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class All_Uploads extends StatefulWidget {
  const All_Uploads({super.key});

  @override
  State<All_Uploads> createState() => _All_UploadsState();
}

class _All_UploadsState extends State<All_Uploads> {
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

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
              MaterialPageRoute(builder: (context) => All_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'My Uploads',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          if (isMobile(context))
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Container(
                height: 40.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff07488A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => All_Uploads()),
                        );
                      },
                      child: Text(
                        ' All ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff212131),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                          side: BorderSide(
                            color: Color(0xff07488A),
                            width: 1.0.w,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Real_Uploads()),
                        );
                      },
                      child: Text(
                        'Real',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff212131),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                          side: BorderSide(
                            color: Color(0xff07488A),
                            width: 1.0.w,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Fake_Uploads()),
                        );
                      },
                      child: Text(
                        'Fake',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Text("Fake",
                      // style: TextStyle(
                      //   color: Colors.red,
                      // ),
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width > 600
                            ? 176.h
                            : 120.h,
                        width: MediaQuery.of(context).size.width > 600
                            ? 160.w
                            : 100.w,
                        child: Image.asset(
                          'assets/fake-img.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Ranim Ahmed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width > 600
                              ? 11.sp
                              : 8.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600
                          ? 176.h
                          : 120.h,
                      width: MediaQuery.of(context).size.width > 600
                          ? 160.w
                          : 100.w,
                      child: Image.asset(
                        'assets/real-img.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Ranim Ahmed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width > 600
                            ? 11.sp
                            : 8.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600
                          ? 176.h
                          : 120.h,
                      width: MediaQuery.of(context).size.width > 600
                          ? 160.w
                          : 100.w,
                      child: Image.asset(
                        'assets/fake-img.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Ranim Ahmed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width > 600
                            ? 11.sp
                            : 8.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 600
                          ? 176.h
                          : 120.h,
                      width: MediaQuery.of(context).size.width > 600
                          ? 160.w
                          : 100.w,
                      child: Image.asset(
                        'assets/real-img.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Ranim Ahmed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width > 600
                            ? 11.sp
                            : 8.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
