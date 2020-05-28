import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          title: 'عن التطبيق',
          color: Colors.black,
          size: 25,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: MyText(
            size: 25,
            color: MyColors.primary,
            title: 'هنا يكتب عن التطبيق',
          ),
        ),
      ),
    );
  }
}
