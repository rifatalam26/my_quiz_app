import 'package:bangla_quiz/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_quiz_app/View/splash_screen.dart';

import 'view/Islamic Quiz/Level 3/test.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
