// ignore_for_file: unused_import

import 'package:fixitfast_2/pages/verificationPage.dart';
import 'package:flutter/material.dart';
import 'package:fixitfast_2/pages/siginupPage.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
import 'package:fixitfast_2/uihelper.dart';
import 'package:flutter/widgets.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextEditingController numberController = TextEditingController();
    TextEditingController firstnameController = TextEditingController();
    TextEditingController secondnameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            UiHelper.customContainer(140, 360, Colors.transparent,
                Image.asset("assets/images/Logo.png")),
            const SizedBox(
              height: 0,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customText(
                "First Name", FontWeight.bold, 14, Colors.black, "bold"),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customtextfield(firstnameController, "Name", "Mr/Mrs",
                Icons.face, TextInputType.emailAddress, false, 10),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customText(
                "Last Name", FontWeight.bold, 14, Colors.black, "bold"),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customtextfield(
                secondnameController,
                "Surname",
                "last name",
                Icons.face_2,
                TextInputType.emailAddress,
                false,
                10),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customText(
                "Phone Name", FontWeight.bold, 14, Colors.black, "bold"),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customtextfield(
                numberController,
                "Phone Number",
                "Phone number",
                Icons.phone_rounded,
                TextInputType.number,
                false,
                10),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => verificationpage()),
              );
            }, "Sign up", Colors.transparent, textColor: Colors.black),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 80,
              width: 280,
              color: Colors.transparent,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 300,
                    color: Colors.transparent,
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Already have an Account?",
                          style:
                              TextStyle(color: Color.fromARGB(255, 99, 97, 97)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // ElevatedButton(
                        //     onPressed: () {
                        //       print("sig up button");
                        //     },
                        //     // style: ElevatedButton.styleFrom(
                        //     //   shape: RoundedRectangleBorder(
                        //     //       borderRadius: BorderRadius.circular(1)),
                        //     //   padding: const EdgeInsets.all(12),
                        //     // ),
                        //     child: Text("sign up")),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
