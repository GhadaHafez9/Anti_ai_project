// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   int _currentPageIndex = 0;
//   PageController _pageController = PageController();

//   List<Widget> _pages = [
//     OnboardingPage(
//     image: 'assets/Onboarding1.svg',
//       title: 'Welcome to our app',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//     ),
//     OnboardingPage(
//       image: 'assets/Onboarding2.svg',
//       title: 'Explore amazing features',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//     ),
//     OnboardingPage(
//       image: 'assets/Onboarding3.svg',
//       title: 'Get started now',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//     ),
//   ];

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: _pages.length,
//               itemBuilder: (context, index) {
//                 return _pages[index];
//               },
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPageIndex = index;
//                 });
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               _pages.length,
//               (index) => _buildIndicator(index),
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               if (_currentPageIndex < _pages.length - 1) {
//                 _pageController.nextPage(
//                   duration: Duration(milliseconds: 300),
//                   curve: Curves.ease,
//                 );
//               } else {
//                 // Handle onboarding completion
//               }
//             },
//             child: Text(
//               _currentPageIndex < _pages.length - 1 ? 'Next' : 'Get Started',
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }

//   Widget _buildIndicator(int index) {
//     return Container(
//       width: 10,
//       height: 10,
//       margin: EdgeInsets.symmetric(horizontal: 4),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: _currentPageIndex == index ? Colors.blue : Colors.grey,
//       ),
//     );
//   }
// }

// class OnboardingPage extends StatelessWidget {
//   final String image;
//   final String title;
//   final String description;

//   const OnboardingPage({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.description,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SvgPicture.asset(image),
//         SizedBox(height: 40),
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           description,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.grey,
//           ),
//         ),
//       ],
//     );
//   }
// }