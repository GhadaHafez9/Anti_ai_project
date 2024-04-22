// ignore_for_file: prefer_const_constructors
import 'package:anti_ai_project/screens/registration/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../models/content_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPageIndex = 0;
  PageController _pageController = PageController();

@override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goToNextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void navigateToLoginScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login_Screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xff111428),
      appBar: AppBar(
        backgroundColor: Color(0xff111428),
        elevation: 0,
        actions: [
          if (_currentPageIndex < 2)
            TextButton(
              onPressed: navigateToLoginScreen,

              child: Text("Skip", style: TextStyle(color: Colors.white,
              decoration: TextDecoration.underline,

              ),
              
              ),
            ),
            
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      SvgPicture.asset(
                        contents[i].image,
                        height: 400,
                        width: 400,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: i == 0 ? Colors.white : Color(0xff5E87E8),
                        ),
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: i == 0 ? Color(0xff5E87E8) : Colors.white,
                        ),
                      ),
                      
                    ],
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                }
                );
              },
              
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 0,),
              Text(
                '0${_currentPageIndex + 1}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            
                      
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: SmoothPageIndicator(),
              ),
              if (_currentPageIndex < contents.length - 1)
                GestureDetector(
                  onTap: goToNextPage,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
            ],
          ),
           
          
        ],
      ),
    );
  
  }

  List<Widget> SmoothPageIndicator() {
  List<Widget> indicators = [];
  for (int i = 0; i < contents.length; i++) {
    indicators.add(
      
      Row(
        children: [
          Container(
            width: 15,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              
              color: i == _currentPageIndex ? Color(0xff5E87E8) : Colors.white,
              
            ),
          ),
          SizedBox(width:40,),
          if (i == 2 && _currentPageIndex >= 2)
            GestureDetector(
              onTap: navigateToLoginScreen,
              child: Icon(
                Icons.check_circle,
                color: Color(0xff51917A),
                size: 40,
              ),
            ),
        ],
      ),
    );
  }
  return indicators;
}
}

