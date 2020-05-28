import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class Privecy extends StatefulWidget {
  @override
  _PrivecyState createState() => _PrivecyState();
}

class _PrivecyState extends State<Privecy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          title: 'الخصوصيه',
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
            title: 'هنا يكتب عن الخصوصية',
          ),
        ),
      ),
    );
  }
}
