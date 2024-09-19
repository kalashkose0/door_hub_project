import 'package:fixitfast_2/pages/homePage.dart';
import 'package:fixitfast_2/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class verificationpage extends StatelessWidget {
  const verificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 380,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Verification code',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We just sent you a verify code. Check your inbox to get them.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 40, height: 40, color: Colors.grey),
                  const SizedBox(width: 10),
                  Container(width: 40, height: 40, color: Colors.grey),
                  const SizedBox(width: 10),
                  Container(width: 40, height: 40, color: Colors.grey),
                  const SizedBox(width: 10),
                  Container(width: 40, height: 40, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const homePage()));
                },
                child: const Text('Continue'),
              ),
              const SizedBox(height: 10),
              const Text('Re-send code in 0:20 sec'),
            ],
          ),
        ),
      ),
    );
  }
}
