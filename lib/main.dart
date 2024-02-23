import 'package:flutter/material.dart';
import 'package:flutter_application_69/constants.dart';
//import 'package:flutter_application_69/views/screens/auth/login.dart';
import 'package:flutter_application_69/views/screens/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthy Spread',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const StartPage(),
    );
  }
}
