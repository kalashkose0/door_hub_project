import 'package:flutter/material.dart';

class UiHelper {
  static customContainer(
      double height, double width, Color color, Widget widget) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: widget,
    );
  }

  static customtextfield(
      TextEditingController controller,
      String hinttext,
      String labeltext,
      IconData icon,
      TextInputType keytext,
      bool tohide,
      double radius) {
    return SizedBox(
      width: 330,
      child: TextField(
        obscureText: tohide,
        controller: controller,
        keyboardType: keytext,
        decoration: InputDecoration(
            hintText: hinttext,
            label: Text(labeltext),
            suffixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
            )),
      ),
    );
  }

  static customButton(VoidCallback callback, String text, Color color,
      {required Color textColor}) {
    return SizedBox(
      height: 55,
      width: 280,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text(text)),
    );
  }

  static customText(String text, FontWeight fonts, double fontsize, Color color,
      String fontfamily) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: color, fontWeight: fonts),
    );
  }

  // static customGestureDetector()
}
