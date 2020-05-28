import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Grey,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: MyText(
          title: 'اسم المعلم',
          size: 23,
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
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
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: <Widget>[
          Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/slider.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: MyColors.primary),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك ياض يا ابو السعيد',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.ltr,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/english.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                      color: MyColors.blackOpacity.withOpacity(.7)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك يسطا اخبارك ايه',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/slider.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: MyColors.primary),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك ياض يا ابو السعيد',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.ltr,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/english.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                      color: MyColors.blackOpacity.withOpacity(.7)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك يسطا اخبارك ايه',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/slider.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: MyColors.primary),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك ياض يا ابو السعيد',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.ltr,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/english.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                      color: MyColors.blackOpacity.withOpacity(.7)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك يسطا اخبارك ايه',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/slider.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: MyColors.primary),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك ياض يا ابو السعيد',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
          Row(
              textDirection: TextDirection.ltr,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/english.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 35,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                      color: MyColors.blackOpacity.withOpacity(.7)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                      title: 'ازيك يسطا اخبارك ايه',
                      color: MyColors.white,
                      size: 18,
                      alien: TextAlign.center,
                    ),
                  ),
                ),
              ]),
        ],
      ),
      bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: MyColors.Grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 70,
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerRight,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    shape: BoxShape.rectangle,
                    border: Border.all(color: MyColors.primary, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                    title: 'اكتب رسالتك هنا',
                    color: MyColors.blackOpacity,
                    size: 22,
                    alien: TextAlign.right,
                  ),
                ),
              ),
              Expanded(
                  child: IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 30,
                        color: MyColors.primary,
                      ),
                      onPressed: () {}))
            ],
          )),
    );
  }
}
