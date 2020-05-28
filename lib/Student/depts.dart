import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class Depts extends StatefulWidget {
  @override
  _DeptsState createState() => _DeptsState();
}

class _DeptsState extends State<Depts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: MyText(
          title: 'الاقسام',
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
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (con, int i) {
            return AnimationContainer(
              index: i,
              distance: 150,
              vertical: false,
              child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 10,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Image.asset(
                                  'images/logo.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                MyText(
                                  title: 'التصميم',
                                  size: 18,
                                  color: MyColors.blackOpacity,
                                )
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/depts');
                              }),
                        ],
                      ),
                      Divider(
                        thickness: .2,
                        color: MyColors.blackOpacity,
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
