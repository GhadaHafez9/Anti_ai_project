// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import '../home_screen_all.dart';

class ResultVideoScreen extends StatefulWidget {
  const ResultVideoScreen({super.key});

  @override
  State<ResultVideoScreen> createState() => _ResultVideoScreenState();
}

class _ResultVideoScreenState extends State<ResultVideoScreen> {
  File? _video;
  VideoPlayerController? _videoPlayerController;
  @override
  void initState() {
    super.initState();
    if (_video != null) {
      _videoPlayerController = VideoPlayerController.file(_video!)
        ..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

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
                          "Detect Fake Videos",
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
                          DottedBorder(
                            color: Color(0xff5D71A0),
                            strokeWidth: 2,
                            dashPattern: [8, 4],
                            child: Container(
                              width: 300.w,
                              height: 250.h,
                              child: _video != null &&
                                      _videoPlayerController != null
                                  ? AspectRatio(
                                      aspectRatio: _videoPlayerController!
                                          .value.aspectRatio,
                                      child:
                                          VideoPlayer(_videoPlayerController!),
                                    )
                                  : IconButton(
                                      icon: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      onPressed: pickImage,
                                    ),
                            ),
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
                              // if (_videoPlayerController != null)
                              //   ElevatedButton(
                              //     onPressed: () {
                              //       if (_videoPlayerController!
                              //           .value.isPlaying) {
                              //         _videoPlayerController?.pause();
                              //       } else {
                              //         _videoPlayerController?.play();
                              //       }
                              //       setState(() {});
                              //     },
                              //     child: Icon(
                              //       _videoPlayerController!.value.isPlaying
                              //           ? Icons.pause
                              //           : Icons.play_arrow,
                              //     ),
                              //   ),

                              SizedBox(
                                height: 117.h,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: pickImage,
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

  void pickImage() async {
    final imagePicker = ImagePicker();
    var pickedVideo = await imagePicker.pickVideo(source: ImageSource.gallery);

    setState(() {
      if (pickedVideo != null) {
        _video = File(pickedVideo.path);
        _videoPlayerController = VideoPlayerController.file(_video!)
          ..initialize().then((_) {
            setState(() {});
          });
      }
    });
  }
}
