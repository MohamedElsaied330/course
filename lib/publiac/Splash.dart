import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  var navikey;
  Splash(this.navikey);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  _CheckingData() async {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/welcome');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _CheckingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/splah.png'), fit: BoxFit.fill)),
        child: Center(
          child: AnimationContainer(
            index: 1,
            distance: 150,
            vertical: true,
            child: Image.asset(
              'images/logo.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
