import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class ActiveCode extends StatefulWidget {
  @override
  _ActiveCodeState createState() => _ActiveCodeState();
}

class _ActiveCodeState extends State<ActiveCode> {
  GlobalKey<ScaffoldState> _Scafold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _Scafold,
      body: ListView(
          padding: EdgeInsets.all(0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/header.png'),
                              fit: BoxFit.fill)),
                      child: Image.asset(
                        'images/logo.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Positioned(
                        top: 35,
                        right: 5,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(children: <Widget>[
                  MyText(
                    title: 'تفعيل رقم الجوال',
                    color: MyColors.primary,
                    size: 25,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyText(
                    title: 'النص يمكن استبداله باى نص تانى يسطا بنفس المساحه',
                    color: MyColors.blackOpacity,
                    size: 16,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MyText(
                    title: 'ادخال الكود هنا',
                    color: MyColors.primary,
                    size: 21,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: MyColors.primary, width: 1.3)),
                          height: 50,
                          onPressed: () {},
                          color: MyColors.Grey,
                          child: MyText(
                            title: '1',
                            size: 20,
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: MyColors.primary, width: 1.3)),
                          height: 50,
                          onPressed: () {},
                          color: MyColors.Grey,
                          child: MyText(
                            title: '1',
                            size: 20,
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: MyColors.primary, width: 1.3)),
                          height: 50,
                          onPressed: () {},
                          color: MyColors.Grey,
                          child: MyText(
                            title: '1',
                            size: 20,
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: MyColors.primary, width: 1.3)),
                          height: 50,
                          onPressed: () {},
                          color: MyColors.Grey,
                          child: MyText(
                            title: '1',
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.primary),
                      child: MyText(
                        title: 'استمرار',
                        size: 22,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        //Navigator.of(context).pushNamed('/register');
                      },
                      //color: MyColors.primary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MyText(
                            title: "ارسال الكود؟",
                            alien: TextAlign.center,
                            color: MyColors.primary,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(
                            title: "لم يتم ارسال الكود",
                            alien: TextAlign.center,
                            color: MyColors.blackOpacity.withOpacity(.8),
                            size: 18,
                          ),
                        ],
                      )),
                ])
              ],
            ),
          ]),
    );
  }
}
