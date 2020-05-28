import 'package:courses/publiac/constant/LabelTextField.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<ScaffoldState> _Scafold = GlobalKey<ScaffoldState>();
  TextEditingController _mail = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _name = new TextEditingController();

  bool _terms = false;

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
                    title: 'ادخال بيانات',
                    color: MyColors.primary,
                    size: 22,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyText(
                    title: 'النص يمكن استبداله باى نص اخر ف المستقبل يسطا',
                    color: MyColors.blackOpacity.withOpacity(.7),
                    size: 22,
                    alien: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    controller: _name,
                    isPassword: false,
                    label: 'Enter Name..',
                    type: TextInputType.text,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    controller: _pass,
                    isPassword: true,
                    label: 'Enter Pass..',
                    type: TextInputType.phone,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    controller: _mail,
                    isPassword: false,
                    label: 'Enter E_mail..',
                    type: TextInputType.emailAddress,
                  ),
                  LabelTextField(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    controller: _phone,
                    isPassword: true,
                    label: 'Enter Phone Num..',
                    type: TextInputType.phone,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Checkbox(
                            value: _terms,
                            activeColor: MyColors.blackOpacity,
                            onChanged: (val) {
                              setState(() {
                                _terms = val;
                              });
                            }),
                        MyText(
                          title: 'قرأت واوافق على',
                          color: MyColors.blackOpacity.withOpacity(.7),
                          size: 18,
                        ),
                        InkWell(
                          child: Text(
                            'الشروط والاحكام',
                            style: TextStyle(
                                color: MyColors.primary,
                                fontSize: 16,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/terms');
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/activeCode');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.primary),
                      child: MyText(
                        title: 'استمرار',
                        size: 25,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      //color: MyColors.primary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MyText(
                            title: "تسجيل دخول",
                            alien: TextAlign.center,
                            color: MyColors.primary,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(
                            title: " هل لديك حساب بالفعل",
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
