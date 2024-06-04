// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultAudioScreen extends StatefulWidget {
  const ResultAudioScreen({super.key});

  @override
  State<ResultAudioScreen> createState() => _ResultAudioScreenState();
}

class _ResultAudioScreenState extends State<ResultAudioScreen> {
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
      body: Column(children: [
        Container(
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Wrap(alignment: WrapAlignment.center, children: [
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
                SizedBox(
                  height: 60.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: [
                        DottedBorder(
                          color: Color(0xff5D71A0),
                          strokeWidth: 2,
                          dashPattern: [8, 4],
                          child: Container(
                            width: 300.w,
                            height: 250.h,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: _uploadAudio,
                              child: Icon(
                                Icons.audiotrack,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
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
                            onTap: _uploadAudio,
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
              ]),
            ),
          ]),
        ),
      ]),
    );
  }

  void _uploadAudio() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
      allowMultiple: false,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      print(file.path);
    } else {
      // User canceled the file selection
    }
  }
}
