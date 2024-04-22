// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anti_ai_project/screens/profile_screens/profile.dart';
import 'package:flutter/material.dart';

class TremsAndPolicy extends StatefulWidget {
  const TremsAndPolicy({super.key});

  @override
  State<TremsAndPolicy> createState() => _TremsAndPolicyState();
}

class _TremsAndPolicyState extends State<TremsAndPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>Profile_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'Terms & Policy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 85,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Felis ultrices sed congue id. Lorem amet ac diam mauris sed sed. Cursus tincidunt adipiscing quis risus. Sed velit quis aliquet vitae. Placerat pharetra in erat rutrum lorem non lacus rutrum. Proin dolor quam vitae iaculis nulla praesent sed.Vel ut et cras eget tellus. Dui ut ligula facilisi nunc eu turpis ultricies sapien non. Ac mauris eu blandit in. Habitasse condimentum tristique aliquet etiam posuere id diam quam. Ac eget cras convallis dictumst sed. Vitae neque neque nisl tincidunt praesent vel. Nunc lectus vulputate enim nullam nisl eget. Neque augue etiam gravida integer morbi sed semper leo accumsan. Enim ipsum neque phasellus libero. Pellentesque convallis id dolor tempor in. Facilisi enim diam et vulputate.Purus purus cursus sit sed. Fermentum amet egestas vitae tempor eu et malesuada non non. Mi urna non facilisis enim pulvinar magna ipsum. Gravida pellentesque sit diam nulla mi purus. Pulvinar augue purus congue augue bibendum tincidunt eu. Quisque nibh tempus sollicitudin varius cursus ante praesent ac. Consequat sed tellus sit felis sed tellus id id. Habitant eu rutrum congue quam velit. Lorem ipsum dolor sit amet consectetur. Felis ultrices sed congue id. Lorem amet ac diam mauris sed sed. Cursus tincidunt adipiscing quis risus. Sed velit quis aliquet vitae. Placerat pharetra in erat rutrum lorem non lacus rutrum. Proin dolor quam vitae iaculis nulla praesent sed.Vel ut et cras eget tellus. Dui ut ligula facilisi nunc eu turpis ultricies sapien non. Ac mauris eu blandit in. Habitasse condimentum tristique aliquet etiam posuere id diam quam. Ac eget cras convallis dictumst sed. Vitae neque neque nisl tincidunt praesent vel. Nunc lectus vulputate enim nullam nisl eget. Neque augue etiam gravida integer morbi sed semper leo accumsan. Enim ipsum neque phasellus libero. Pellentesque convallis id dolor tempor in. Facilisi enim diam et vulputate.Purus purus cursus sit sed. Fermentum amet egestas vitae tempor eu et malesuada non non. Mi urna non facilisis.Vitae neque neque nisl tincidunt praesent vel. Nunc lectus vulputate enim nullam nisl eget. Neque augue etiam gravida integer morbi sed semper leo accumsan. Enim ipsum neque phasellus libero. Pellentesque convallis id dolor tempor in.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
