// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'signup.dart';
// import 'ChosenLocationPage.dart';

// class WelcomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Image.asset(
//             'Images/HomePage.jpg',
//             width: double.infinity,
//             height: double.infinity,
//             fit: BoxFit.cover,
//           ),

//           // "PyraGuide" text in top middle
//           Positioned(
//             top: 40,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: Text(
//                 'PyraGuide',
//                 style: TextStyle(
//                   fontFamily: 'Hiatus',
//                   fontSize: 110,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),

//           // Chosen Location button with CupertinoPageRoute
//           Positioned(
//             bottom: 100,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     CupertinoPageRoute(
//                       builder: (context) => ChosenLocationPage(),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   'CHOSEN LOCATION',
//                   style: TextStyle(
//                     fontFamily: 'Adventure Time Logo',
//                     fontSize: 24,
//                     color: Colors.white,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   primary: Color(0xFFDAA520),
//                   minimumSize: Size(250, 50),
//                   maximumSize: Size(350, 60),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Explore button with CupertinoPageRoute
//           Positioned(
//             bottom: 40,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     CupertinoPageRoute(
//                       builder: (context) => SignUpPage(),
//                       // Replace with your SignupPage class
//                       // transitionDuration: Duration(milliseconds: ???), // Optional: Set desired duration
//                     ),
//                   );
//                 },
//                 child: Text(
//                   'EXPLORE',
//                   style: TextStyle(
//                     fontFamily: 'Adventure Time Logo',
//                     fontSize: 24,
//                     color: Colors.white,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   primary: Color(0xFFDAA520),
//                   minimumSize: Size(250, 50),
//                   maximumSize: Size(350, 60),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
