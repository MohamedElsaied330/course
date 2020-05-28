import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Teacher extends StatefulWidget {
  var _scafold;

  Teacher(this._scafold);

  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (con, int i) {
          var rating = 1.5;
          return AnimationContainer(
            vertical: true,
            distance: 150,
            index: i,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black54, blurRadius: 5)
                    ],
                    color: Colors.white),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/english.png'),
                        ),
                      ),
                    ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MyText(
                              title: 'ابو السعيد',
                              size: 22,
                              color: MyColors.primary,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Icon(Icons.location_on),
                                MyText(
                                  title: 'الرياض ',
                                  size: 18,
                                  color: MyColors.primary,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SmoothStarRating(
                                allowHalfRating: true,
                                onRated: (v) {
                                  setState(() {
                                    rating = v;
                                  });
                                },
                                starCount: 5,
                                rating: rating = 1.5,
                                size: 18.0,
                                isReadOnly: false,
//                                            filledIconData: Icons.blur_off,
//                                            halfFilledIconData: Icons.blur_on,
                                color: Colors.green,
                                borderColor: Colors.green,
                                spacing: 3.0),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
          );
        });
  }
}
