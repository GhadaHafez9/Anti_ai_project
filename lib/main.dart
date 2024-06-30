// import 'package:anti_ai_project/introscreen.dart';
// ignore_for_file: prefer_const_constructors
import 'package:anti_ai_project/screens/splash_screen.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_kit/overlay_kit.dart';

void main() {
  runApp(const MyApp()
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => const MyApp(),
      // ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return OverlayKit(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              // locale: DevicePreview.locale(context),
              // builder: DevicePreview.appBuilder,
              theme: ThemeData.dark(),
              home: Splash_Screen(),
              // routes: {
              //   "/" :(context) => IntroScreen() ,
              // },
            ),
          );
        });
  }
}
