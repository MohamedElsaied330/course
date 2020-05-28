import 'package:carousel_pro/carousel_pro.dart';
import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Main extends StatefulWidget {
  Main(GlobalKey<ScaffoldState> _scafold);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();
  var rating = 1.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafold,
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
//        padding: EdgeInsets.all(0),
//        scrollDirection: Axis.vertical,
          //    children: <Widget>[
          child: Column(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Stack(
              children: <Widget>[
                Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    AssetImage('images/course.png'),
                    AssetImage('images/design.png'),
                    AssetImage('images/english.png'),
                    AssetImage('images/slider.png'),
                  ],
                  autoplay: true,
                  animationDuration: Duration(milliseconds: 1000),
                  animationCurve: Curves.fastOutSlowIn,
                  dotSize: 6,
                  indicatorBgPadding: 5,
                  dotBgColor: Colors.transparent,
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    actions: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications_none,
                          size: 22,
                          color: MyColors.blackOpacity.withOpacity(.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/cart');
                        },
                        child: Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: MyColors.blackOpacity.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MyText(
                  title: 'الاقسام',
                  size: 23,
                  color: MyColors.blackOpacity.withOpacity(.7),
                ),
                InkWell(
                  onTap: () {},
                  child: MyText(
                    title: 'مشاهده الكل',
                    size: 20,
                    color: MyColors.blackOpacity.withOpacity(.7),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.end,
                children: List.generate(7, (index) {
                  return AnimationContainer(
                    index: index,
                    vertical: false,
                    distance: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/depts');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "images/logo.png",
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            MyText(
                              title: "التصميم",
                              size: 12,
                              color: Colors.black87,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MyText(
                  title: 'الاكثر تقييما',
                  size: 22,
                  color: MyColors.primary,
                  //alien: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.vertical,
                //alignment: WrapAlignment.end,
                children: List.generate(5, (index) {
                  return AnimationContainer(
                    index: index,
                    vertical: true,
                    distance: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/course');
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 200,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/english.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                    )),
                              ),
                              Container(
                                height: 25,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    MyText(
                                      title: 'دورة اللغه الانجليزيه',
                                      size: 14,
                                      color: MyColors.primary,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SmoothStarRating(
                                        allowHalfRating: true,
                                        onRated: (v) {
                                          setState(() {
                                            rating = v;
                                          });
                                        },
                                        starCount: 5,
                                        rating: rating,
                                        size: 18.0,
                                        isReadOnly: false,
//                                            filledIconData: Icons.blur_off,
//                                            halfFilledIconData: Icons.blur_on,
                                        color: Colors.green,
                                        borderColor: Colors.green,
                                        spacing: 3.0),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "الرياض",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اسم المعلم",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.live_tv,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اونلاين",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: MyText(
                    title: 'الدورلات الاونلاين',
                    size: 22,
                    color: MyColors.primary,
                    //alien: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.vertical,
                //alignment: WrapAlignment.end,
                children: List.generate(5, (index) {
                  return AnimationContainer(
                    index: index,
                    vertical: true,
                    distance: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/course');
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 200,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/english.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                    )),
                              ),
                              Container(
                                height: 25,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    MyText(
                                      title: 'دورة اللغه الانجليزيه',
                                      size: 14,
                                      color: MyColors.primary,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SmoothStarRating(
                                        allowHalfRating: true,
                                        onRated: (v) {
                                          setState(() {
                                            rating = v;
                                          });
                                        },
                                        starCount: 5,
                                        rating: rating,
                                        size: 18.0,
                                        isReadOnly: false,
//                                            filledIconData: Icons.blur_off,
//                                            halfFilledIconData: Icons.blur_on,
                                        color: Colors.green,
                                        borderColor: Colors.green,
                                        spacing: 3.0),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "الرياض",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اسم المعلم",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.live_tv,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اونلاين",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                    title: 'ورش العمل',
                    size: 22,
                    color: MyColors.primary,
                    //alien: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.vertical,
                //alignment: WrapAlignment.end,
                children: List.generate(5, (index) {
                  return AnimationContainer(
                    index: index,
                    vertical: false,
                    distance: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/course');
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width - 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/english.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                    )),
                              ),
                              Container(
                                height: 25,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    MyText(
                                      title: 'دورة اللغه الانجليزيه',
                                      size: 14,
                                      color: MyColors.primary,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SmoothStarRating(
                                        allowHalfRating: true,
                                        onRated: (v) {
                                          setState(() {
                                            rating = v;
                                          });
                                        },
                                        starCount: 5,
                                        rating: rating,
                                        size: 18.0,
                                        isReadOnly: false,
//                                            filledIconData: Icons.blur_off,
//                                            halfFilledIconData: Icons.blur_on,
                                        color: Colors.green,
                                        borderColor: Colors.green,
                                        spacing: 3.0),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "الرياض",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اسم المعلم",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.live_tv,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: MyText(
                                        title: "اونلاين",
                                        size: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
