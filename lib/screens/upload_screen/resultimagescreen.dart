// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../home_screen_all.dart';

class ResultImageScreen extends StatefulWidget {
  const ResultImageScreen({Key? key}) : super(key: key);

  @override
  State<ResultImageScreen> createState() => _ResultImageScreenState();
}

class _ResultImageScreenState extends State<ResultImageScreen> {
  File? _image;
  bool _isImageSelected = false;

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
        backgroundColor: Color(0xff37425E),
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Detect Fake Photos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5E87E8),
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DottedBorder(
                            color: Color(0xff5D71A0),
                            strokeWidth: 2,
                            dashPattern: [8, 4],
                            child: Container(
                              width: 300.w,
                              height: 250.h,
                              child: Stack(
                                children: [
                                  if (_image != null)
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: FileImage(_image!),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  if (!_isImageSelected)
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                          onTap: _uploadImage,
                                          child: Icon(
                                            Icons.camera_alt,
                                            color:
                                                Colors.white.withOpacity(0.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Output:",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 117.h,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: _uploadImage,
                                  child: Text(
                                    'Try another one?',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _uploadImage() async {
    final picker = ImagePicker();
    PickedFile? pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        _isImageSelected = true;
      });
      // ApiService().uploadPost()

      print(pickedFile.path);
    } else {}
  }
}
