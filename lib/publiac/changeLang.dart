import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class ChangeLang extends StatefulWidget {
  @override
  _ChangeLangState createState() => _ChangeLangState();
}

class _ChangeLangState extends State<ChangeLang> {
  @override
  Widget build(BuildContext context) {
    Color val = Colors.green;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.gold,
        automaticallyImplyLeading: false,
        title: MyText(
          title: 'تغيير اللغه',
          color: MyColors.primary,
          size: 25,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: MyColors.blackOpacity,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ),
      body: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(top: 30),
        color: MyColors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                MyText(
                  title: 'العربيه',
                  size: 25,
                  color: Colors.black,
                ),
                Radio(
                    value: Colors.green,
                    groupValue: val,
                    onChanged: (newVal) {
                      val = newVal;
                    })
              ],
            ),
            Divider(
              thickness: .5,
              color: MyColors.blackOpacity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                MyText(
                  title: 'English',
                  size: 25,
                  color: Colors.black,
                ),
                Radio(
                    value: Colors.red,
                    groupValue: val,
                    onChanged: (newVal) {
                      val = newVal;
                    })
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 45,
            decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.circular(10)),
            child: MyText(
              title: 'حفظ التعديلات',
              size: 22,
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
