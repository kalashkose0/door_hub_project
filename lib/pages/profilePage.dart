import 'package:fixitfast_2/uihelper.dart';
import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController gendercontroller = TextEditingController();
    TextEditingController DOBcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          // title: Icon(Icons.arrow_back),
          ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            height: 660,
            width: 340,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 330,
                  color: Colors.transparent,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.vertical_align_bottom),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text('Kalash Bhai'),
                  subtitle: Text('@xyzabcgmail.co'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Phone Number"),
                const SizedBox(
                  height: 10,
                ),
                // TextField(
                //   keyboardType: TextInputType.phone,
                //   decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(2),
                //   )),
                // ),
                UiHelper.customtextfield(
                    phonecontroller,
                    "Phone Number",
                    "Phone Number",
                    Icons.phone,
                    TextInputType.number,
                    false,
                    10),
                const SizedBox(
                  height: 20,
                ),
                const Text("Email Address"),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customtextfield(
                    emailcontroller,
                    "Email",
                    "email address",
                    Icons.email,
                    TextInputType.emailAddress,
                    false,
                    10),
                const SizedBox(
                  height: 20,
                ),
                const Text("Gender"),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customtextfield(
                    gendercontroller,
                    "M/F",
                    "Male / Female",
                    Icons.person,
                    TextInputType.emailAddress,
                    false,
                    10),
                const SizedBox(
                  height: 20,
                ),
                const Text("Date of Birth"),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customtextfield(
                    DOBcontroller,
                    "DOB",
                    "D-O-B",
                    Icons.calendar_month,
                    TextInputType.numberWithOptions(),
                    false,
                    10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
