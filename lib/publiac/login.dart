import 'package:courses/publiac/constant/LabelTextField.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _Scafold = GlobalKey<ScaffoldState>();
  TextEditingController _mail = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

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
                    title: 'تسجيل الدخول',
                    color: MyColors.blackOpacity.withOpacity(.7),
                    size: 22,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    controller: _mail,
                    isPassword: false,
                    label: 'Enter E_mail..',
                    type: TextInputType.emailAddress,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    controller: _pass,
                    isPassword: true,
                    label: 'Enter Pass..',
                    type: TextInputType.phone,
                  ),
                  FlatButton(
                    onPressed: () {},
                    //color: MyColors.primary,
                    child: MyText(
                      title: 'هل نسيت كلمه السر ؟ ',
                      alien: TextAlign.center,
                      color: MyColors.blackOpacity.withOpacity(.7),
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/studentHome');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.primary),
                      child: MyText(
                        title: 'تسجيل دخول',
                        size: 22,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                      //color: MyColors.primary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MyText(
                            title: "تسجيل جديد؟",
                            alien: TextAlign.center,
                            color: MyColors.primary,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(
                            title: " هل لديك حساب",
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
