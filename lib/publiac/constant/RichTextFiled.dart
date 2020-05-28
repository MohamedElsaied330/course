import 'package:flutter/material.dart';

import 'MyColors.dart';

class RichTextFiled extends StatelessWidget {
  TextEditingController controller;
  String label;
  EdgeInsets margin = EdgeInsets.all(0);
  TextInputType type = TextInputType.text;
  int min, max;
  double height;

  RichTextFiled(
      {this.label,
      this.controller,
      this.margin,
      this.type,
      this.max,
      this.min,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        minLines: min,
        maxLines: max,
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
            hintText: "$label",
            hintStyle: TextStyle(fontFamily: "cairo", fontSize: 14)),
      ),
    );
  }
}
