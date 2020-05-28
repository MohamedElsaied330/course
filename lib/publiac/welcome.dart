import 'package:courses/publiac/constant/GlobalState.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();
  ValueNotifier _notifier = new ValueNotifier<int>(0); //pageviewindicator
  PageController _controller; //pageview
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new PageController(initialPage: 0);
  }

  _setChange(val) {
    _notifier.value = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      key: _scafold,
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (val) => _setChange(val),
        children: <Widget>[
          Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyText(
                    title: "عنوان الصفحة",
                    size: 20,
                    color: MyColors.blackOpacity,
                  ),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/logo.png"),
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: MyText(
                      title: 'بسم الله الرحمن الرحيم',
                      size: 18,
                      color: MyColors.blackOpacity.withOpacity(.7),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: PageViewIndicator(
                      pageIndexNotifier: _notifier,
                      length: 3,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                      normalBuilder: (animationController, index) => Circle(
                        size: 8.0,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                      highlightedBuilder: (animationController, index) =>
                          ScaleTransition(
                        scale: CurvedAnimation(
                          parent: animationController,
                          curve: Curves.ease,
                        ),
                        child: Circle(
                          size: 12.0,
                          color: MyColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 18),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _controller.animateToPage(1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: MyText(
                        title: "التالي",
                        size: 22,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Scaffold(
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyText(
                    title: "عنوان الصفحة",
                    size: 22,
                    color: MyColors.blackOpacity,
                  ),
                  Container(
                    height: 190,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/logo.png"),
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: MyText(
                      title: 'بسم الله الرحمن الرحيم',
                      size: 20,
                      color: MyColors.blackOpacity.withOpacity(.7),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: PageViewIndicator(
                      pageIndexNotifier: _notifier,
                      length: 3,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                      normalBuilder: (animationController, index) => Circle(
                        size: 8.0,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                      highlightedBuilder: (animationController, index) =>
                          ScaleTransition(
                        scale: CurvedAnimation(
                          parent: animationController,
                          curve: Curves.ease,
                        ),
                        child: Circle(
                          size: 12.0,
                          color: MyColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 18),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _controller.animateToPage(2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: MyText(
                        title: "التالى",
                        size: 23,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _controller.animateToPage(0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: MyText(
                        title: "السابق",
                        size: 23,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _controller.animateToPage(1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: MyText(
                        title: "السابق",
                        size: 22,
                        color: MyColors.blackOpacity.withOpacity(.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: ListView(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        title: "عنوان الصفحة",
                        size: 20,
                        color: MyColors.blackOpacity,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/logo.png"),
                                fit: BoxFit.contain)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: MyText(
                          title: 'بسم الله الرحمن الرحيم',
                          size: 18,
                          color: MyColors.blackOpacity.withOpacity(.7),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: PageViewIndicator(
                          pageIndexNotifier: _notifier,
                          length: 3,
                          indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                          normalBuilder: (animationController, index) => Circle(
                            size: 8.0,
                            color: MyColors.blackOpacity.withOpacity(.7),
                          ),
                          highlightedBuilder: (animationController, index) =>
                              ScaleTransition(
                            scale: CurvedAnimation(
                              parent: animationController,
                              curve: Curves.ease,
                            ),
                            child: Circle(
                              size: 12.0,
                              color: MyColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      GlobalState.instance.set("userType", "1");
                      Navigator.of(context).pushNamed("/login");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 70,
                      height: 45,
                      decoration: BoxDecoration(
                          color: MyColors.primary,
                          borderRadius: BorderRadius.circular(25)),
                      alignment: Alignment.center,
                      child: MyText(
                        title: "التسجيل كطالب",
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GlobalState.instance.set("userType", "2");
                      Navigator.of(context).pushNamed("/login");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 70,
                      height: 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border:
                              Border.all(color: MyColors.primary, width: 2)),
                      alignment: Alignment.center,
                      child: MyText(
                        title: "التسجيل كمعلم",
                        size: 18,
                        color: MyColors.primary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
