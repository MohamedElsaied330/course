import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  GlobalKey<ScaffoldState> _scafold = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: MyText(
          title: 'حسابى',
          size: 25,
          color: Colors.black,
          alien: TextAlign.left,
        ),
        elevation: 2,
        centerTitle: false,
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
      //backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: <Widget>[
          Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: MyColors.Grey,
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/english.png'),
                      ),
                      Positioned(
                          top: 65,
                          child: Icon(
                            Icons.camera_alt,
                            size: 35,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'الاسم',
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'ابو السعيد',
                    size: 22,
                    color: MyColors.primary,
                  )),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.5),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'رقم الجوال',
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: '٠١٠٩٥٣٢٤١٨٢',
                    size: 22,
                    color: MyColors.primary,
                  )),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.5),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'البريد الالكترونى',
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'sasa201310@yahoo.com',
                    size: 22,
                    color: MyColors.primary,
                  )),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.5),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'اللغة',
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'اللغه العربيه',
                      size: 22,
                      color: MyColors.primary,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/changeLang');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.5),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'كلمة المرور',
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  alignment: Alignment.topRight,
                  child: MyText(
                    title: 'تغيير كلمه المرور',
                    size: 22,
                    color: Colors.blue,
                  )),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.5),
              ),
              Container(
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
              )
            ],
          )
        ],
      ),
    );
  }
}
