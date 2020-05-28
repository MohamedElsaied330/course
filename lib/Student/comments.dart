import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:courses/publiac/constant/RichTextFiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();

  TextEditingController _comment = new TextEditingController();

  void _showModalSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        context: context,
        builder: (builder) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                RichTextFiled(
                  controller: _comment,
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  min: 4,
                  max: 5,
                  label: "التعليق",
                  type: TextInputType.text,
                ),
                Container(
                  height: 50,
                  width: 250,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: MyText(
                    title: "ارسال",
                    size: 16,
                    color: MyColors.white,
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafold,
      backgroundColor: MyColors.Grey,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: MyText(
          title: 'التعليقات',
          size: 25,
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
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
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (con, int i) {
            return AnimationContainer(
              vertical: true,
              distance: 150,
              index: i,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 20,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/slider.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MyText(
                              title: 'ابو السعيد',
                              size: 22,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.star)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MyText(
                              title: 'اكتب هنا ال انت عاوزة',
                              size: 18,
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showModalSheet(),
        backgroundColor: MyColors.primary,
        isExtended: true,
        child: Icon(
          Icons.chat,
          size: 30,
          color: MyColors.white,
        ),
      ),
    );
  }
}
