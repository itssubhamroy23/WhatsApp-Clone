import 'dart:ui';

import 'package:flutter/material.dart';

class Uihelper {
  static customButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 15, color: Colors.white),
          )),
    );
  }

  static customText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(text,
        style: TextStyle(
            fontSize: height,
            color: color ?? Color(0xff5E5E5E),
            fontWeight: fontweight));
  }

  static customContainer(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFd9d9d9),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
