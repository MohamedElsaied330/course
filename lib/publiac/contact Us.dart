import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: MyText(
            title: 'اتصل بنا',
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Center(
                      child: Image.asset(
                        'images/logo.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: MyColors.primary, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        title: 'الاسم',
                        color: MyColors.blackOpacity.withOpacity(.7),
                        size: 22,
                        alien: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: MyColors.primary, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        title: 'البريد الالكترونى',
                        color: MyColors.blackOpacity.withOpacity(.7),
                        size: 22,
                        alien: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: MyColors.primary, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 35),
                      child: MyText(
                        title: 'الرساله',
                        color: MyColors.blackOpacity.withOpacity(.7),
                        size: 22,
                        alien: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: MyColors.primary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.primary, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        title: 'ارسال',
                        color: MyColors.white,
                        size: 23,
                        alien: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.white, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: MyText(
                        title: 'او عبر التواصل الاجتماعى',
                        color: MyColors.blackOpacity,
                        size: 24,
                        alien: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Image.asset(
                        'images/facebook.png',
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Image.asset(
                        'images/insta.png',
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Image.asset(
                        'images/bluelinkedin.png',
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Image.asset(
                        'images/twitter.png',
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
