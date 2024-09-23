import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class acRepair extends StatelessWidget {
  const acRepair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appliance Repair"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 330,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Text(
                        "Workers are on Holiday !!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.wrong_location_rounded)
                    ],
                  ),
                ),
                Text("we will Notify you as soon as Possible.....")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
