import 'package:courses/Student/Cart.dart';
import 'package:courses/Student/Teacher.dart';
import 'package:courses/Student/chat.dart';
import 'package:courses/Student/comments.dart';
import 'package:courses/Student/depts.dart';
import 'package:courses/Student/studentCourse.dart';
import 'package:courses/Student/student_home.dart';
import 'package:courses/publiac/Splash.dart';
import 'package:courses/publiac/about.dart';
import 'package:courses/publiac/activeCode.dart';
import 'package:courses/publiac/changeLang.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/contact%20Us.dart';
import 'package:courses/publiac/login.dart';
import 'package:courses/publiac/privecy.dart';
import 'package:courses/publiac/register.dart';
import 'package:courses/publiac/security.dart';
import 'package:courses/publiac/terms.dart';
import 'package:courses/publiac/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<MyApp> {
  static final navikey = new GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navikey,
      title: 'Courses',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        cursorColor: MyColors.primary,
        focusColor: MyColors.primary,
        accentColor: MyColors.primary,
        primaryColor: MyColors.primary,
        platform: TargetPlatform.android,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      home: Splash(navikey),
      routes: {
        "/splash": (BuildContext con) => Splash(navikey),
        "/welcome": (BuildContext con) => WelcomePage(),
        "/login": (BuildContext con) => LoginPage(),
        "/register": (BuildContext con) => Register(),
        "/terms": (BuildContext con) => Terms(),
        "/activeCode": (BuildContext con) => ActiveCode(),
        "/studentHome": (BuildContext con) => StudentHome(),
        "/security": (BuildContext con) => Security(),
        "/about": (BuildContext con) => About(),
        "/contact": (BuildContext con) => ContactUs(),
        "/privecy": (BuildContext con) => Privecy(),
        "/changeLang": (BuildContext con) => ChangeLang(),
        "/depts": (BuildContext con) => Depts(),
        "/course": (BuildContext con) => Course(),
        "/teacherInfo": (BuildContext con) => TeacherInfo(),
        "/comments": (BuildContext con) => Comments(),
        "/chat": (BuildContext con) => Chat(),
        "/cart": (BuildContext con) => Cart(),
      },
    );
  }
}
