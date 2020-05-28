import 'package:flutter/material.dart';

import 'MyColors.dart';

class LabelTextField extends StatelessWidget {
  TextEditingController controller;
  String label;
  EdgeInsets margin = EdgeInsets.all(0);
  bool isPassword = false;
  TextInputType type = TextInputType.text;

  LabelTextField(
      {this.label, this.controller, this.margin, this.isPassword, this.type});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      margin: margin,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        style: TextStyle(
            fontSize: 14,
            fontFamily: "cairo",
            color: Colors.black.withOpacity(.7)),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(25)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color: MyColors.primary.withOpacity(.5), width: 2)),
            hintText: "  $label  ",
            hintStyle: TextStyle(fontFamily: "cairo", fontSize: 14),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
      ),
    );
  }
}
