// ignore_for_file: unused_import
import 'package:fixitfast_2/pages/categoriesSeeMorePage.dart';
import 'package:fixitfast_2/pages/homePage.dart';
import 'package:fixitfast_2/pages/listPage.dart';
import 'package:fixitfast_2/pages/notificationPage.dart';
import 'package:fixitfast_2/pages/siginPage.dart';
import 'package:fixitfast_2/pages/siginupPage.dart';
import 'package:fixitfast_2/pages/verificationPage.dart';
import 'package:fixitfast_2/screens/SplashScreen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FixItFast',
      // home: signPage(),
      home: SplashScreen1(),
      // home: signupPage(),
      // home: verificationpage(),
      // home: homePage(),
      // home: notificationPage(),
      // home: categoriesSeeMorePage(),
      // home: listPage(),
    );
  }
}
