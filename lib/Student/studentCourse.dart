import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Grey,
      body: ListView(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: MyColors.blackOpacity,
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/course.png'),
                          fit: BoxFit.fill)),
                ),
                AppBar(
                    titleSpacing: 0,
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    title: Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {
                              //Navigator.of(context).pop();
                            }),
                        IconButton(
                            icon: Icon(Icons.notifications_none),
                            onPressed: () {
                              //Navigator.of(context).pop();
                            }),
                      ],
                    )),
                Positioned(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.centerRight,
                  child: MyText(
                    title: 'دورة اللغه الانجليزيه',
                    color: MyColors.white,
                    size: 23,
                  ),
                )),
                Positioned(
                    bottom: 50,
                    right: 10,
                    child: Wrap(
                      //direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      textDirection: TextDirection.rtl,
                      spacing: 15,
                      runSpacing: 15,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Icon(
                                Icons.alarm,
                                color: MyColors.white,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                title: '3',
                                color: MyColors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                title: 'ساعات',
                                color: MyColors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                title: 'اونلاين',
                                color: MyColors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 90,
                    right: 10,
                    child: Wrap(
                      //direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      textDirection: TextDirection.rtl,
                      spacing: 15,
                      runSpacing: 15,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: MyColors.gold,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                title: '4.5',
                                color: MyColors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: MyColors.white,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(
                                title: '25',
                                color: MyColors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              MyText(
                                title: 'طالب مسجل',
                                color: MyColors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              border:
                                  Border.all(width: 1, color: MyColors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              MyText(
                                title: 'بواسطه ابو السعيد',
                                color: MyColors.white,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Center(
            heightFactor: 0,
            child: Container(
              width: 280,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:
                      DecorationImage(image: AssetImage('images/slider.png'))),
              child: Icon(
                Icons.ondemand_video,
                size: 30,
                color: MyColors.white,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MyText(
              title: ' ريال 250 ',
              size: 22,
              color: Colors.black,
              alien: TextAlign.right,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              alignment: Alignment.center,
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: MyColors.blackOpacity.withOpacity(.2))
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.primary),
              child: MyText(
                title: 'اشترى الان',
                color: MyColors.white,
                size: 25,
                alien: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              alignment: Alignment.center,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: MyColors.blackOpacity.withOpacity(.2))
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.white),
              child: MyText(
                title: 'اضف الى المفضله',
                color: MyColors.blackOpacity,
                size: 25,
                alien: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              alignment: Alignment.center,
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: MyColors.blackOpacity.withOpacity(.2))
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.white),
              child: MyText(
                title: 'اضف الى العربة',
                color: MyColors.blackOpacity,
                size: 25,
                alien: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: MyColors.white,
                border: Border.all(
                    color: MyColors.blackOpacity.withOpacity(.5), width: .2)),
            child: ListTile(
              title: MyText(
                title: 'الذى سوف تتعلمه ؟',
                color: Colors.black,
                size: 22,
                alien: TextAlign.right,
              ),
              subtitle: MyText(
                title: ' الدورة تحتوى على الدورة تحتوى على',
                color: MyColors.blackOpacity,
                size: 18,
                alien: TextAlign.right,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: MyColors.white,
                border: Border.all(
                    color: MyColors.blackOpacity.withOpacity(.5), width: .2)),
            child: ListTile(
              title: MyText(
                title: 'الدورة تحتوى على',
                color: Colors.black,
                size: 22,
                alien: TextAlign.right,
              ),
              subtitle: MyText(
                title: 'الدورة تحتوى على الدورة تحتوى على',
                color: MyColors.blackOpacity,
                size: 18,
                alien: TextAlign.right,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: MyColors.white,
                border: Border.all(
                    color: MyColors.blackOpacity.withOpacity(.5), width: .2)),
            child: ListTile(
              title: MyText(
                title: 'وصف الدورة',
                color: Colors.black,
                size: 22,
                alien: TextAlign.right,
              ),
              subtitle: MyText(
                title: ' الدورة تحتوى على الدورة تحتوى على ',
                color: MyColors.blackOpacity,
                size: 18,
                alien: TextAlign.right,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(color: MyColors.white),
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'بيانات المعلم',
                      size: 22,
                      color: MyColors.primary,
                      alien: TextAlign.center,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/teacherInfo');
                        })
                  ],
                ),
                Divider(
                  height: .5,
                  color: MyColors.blackOpacity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'التعليقات',
                      size: 22,
                      color: MyColors.primary,
                      alien: TextAlign.center,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/comments');
                        })
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
