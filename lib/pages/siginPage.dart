import 'package:fixitfast_2/pages/siginupPage.dart';
import 'package:flutter/material.dart';
import 'package:fixitfast_2/uihelper.dart';
import 'package:flutter/widgets.dart';

class signPage extends StatelessWidget {
  const signPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            UiHelper.customContainer(280, 360, Colors.transparent,
                Image.asset("assets/images/logo3.png")),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign in',
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
            UiHelper.customtextfield(numberController, "Phone Number",
                "Phone Number", Icons.phone, TextInputType.number, false, 10),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signupPage()),
              );
            }, "Sign In", Colors.transparent, textColor: Colors.black),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 250,
              color: Colors.white,
              child: Column(
                children: [
                  UiHelper.customText("Sign in with", FontWeight.bold, 15,
                      Colors.black, "bold"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: Image.asset(
                          'assets/images/google.jpg',
                          fit: BoxFit.fill,
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("fb button");
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: Image.asset(
                          'assets/images/fblogo.png',
                          fit: BoxFit.fill,
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("apple button");
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: Image.asset(
                          'assets/images/apple.jpg',
                          fit: BoxFit.fill,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: 280,
              color: Colors.transparent,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("guest button");
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        padding: const EdgeInsets.all(12),
                      ),
                      child: Text("Continue as guest")),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 260,
                    color: Colors.transparent,
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "create a New Account?",
                          style:
                              TextStyle(color: Color.fromARGB(255, 99, 97, 97)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // ElevatedButton(
                        //     onPressed: () {
                        //       print("sign up button");
                        //     },
                        //     // style: ElevatedButton.styleFrom(
                        //     //   shape: RoundedRectangleBorder(
                        //     //       borderRadius: BorderRadius.circular(1)),
                        //     //   padding: const EdgeInsets.all(12),
                        //     // ),
                        //     child: Text("sign up")),
                        Text(
                          "Sign Up",
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
