import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scafold;
  Profile(this._scafold);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black54,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.message, color: Colors.black54),
              onPressed: () {}),
        ],
        title: MyText(
          title: 'حسابى',
          color: Colors.black,
          size: 23,
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
//                    child: ClipOval(
//                      child: Image.asset('images/course.png'),
//                    ),
                    backgroundImage: AssetImage('images/course.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                    title: "اوامر الشبكة",
                    size: 22,
                    color: MyColors.primary,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyText(
                    title: "sasa201310@yahoo.com",
                    size: 18,
                    color: MyColors.blackOpacity,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.primary, width: 2),
                        shape: BoxShape.rectangle),
                    child: Center(
                      child: MyText(
                        title: 'كن معلم',
                        color: Colors.black,
                        size: 22,
                        alien: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 20,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'امن الحساب',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/security');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 20,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'عن التطبيق',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/about');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 10,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'اتصل بنا',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/contact');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 10,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'سياسة الخصوصيه',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/privecy');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 20,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: ' الشروط والاحكام',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/terms');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width - 20,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    MyText(
                      title: 'مشاركة التطبيق',
                      size: 22,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColors.blackOpacity.withOpacity(.3),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    MyText(
                      title: 'تسجيل الخروج',
                      size: 23,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.signOutAlt,
                          size: 22,
                          color: Colors.red,
                        ),
                        onPressed: () {})
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
