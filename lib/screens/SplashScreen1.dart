import 'dart:async';

import 'package:fixitfast_2/screens/SplashScreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashScreen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xFF, 0x67, 0x59, 0xFF),
      body: Center(
        child: Container(
          child: Image.asset("assets/images/logomain.png"),
        ),
      ),
    );
  }
}
