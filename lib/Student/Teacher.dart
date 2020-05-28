import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TeacherInfo extends StatefulWidget {
  @override
  _TeacherInfoState createState() => _TeacherInfoState();
}

class _TeacherInfoState extends State<TeacherInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Grey,
      appBar: AppBar(
        title: MyText(
          title: "اسم المعلم",
          size: 16,
          color: MyColors.blackOpacity,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: MyColors.blackOpacity,
          ),
        ),
        actions: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.shopping_cart,
                size: 20,
                color: MyColors.blackOpacity,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/english.png"),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle),
                ),
                MyText(
                  title: 'ابو السعيد',
                  size: 16,
                  color: MyColors.blackOpacity,
                ),
                MyText(
                  title: "البتاع ده مش عاوز يخلص ليه",
                  size: 14,
                  color: Colors.black45,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          MyText(
                            title: "22",
                            size: 14,
                            color: MyColors.blackOpacity,
                          ),
                          MyText(
                            title: "طالب",
                            size: 14,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: .5,
                      ),
                      Column(
                        children: <Widget>[
                          MyText(
                            title: "15",
                            size: 14,
                            color: MyColors.blackOpacity,
                          ),
                          MyText(
                            title: "دورة",
                            size: 14,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: .5,
                      ),
                      Column(
                        children: <Widget>[
                          MyText(
                            title: "3/5",
                            size: 14,
                            color: MyColors.blackOpacity,
                          ),
                          MyText(
                            title: "التقييم",
                            size: 14,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MyText(
                  title: "الدورات ",
                  size: 18,
                  color: MyColors.blackOpacity,
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) {
                  return InkWell(
                    onTap: () => Navigator.of(context).pushNamed("/course"),
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.only(bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                image: DecorationImage(
                                    image: AssetImage("images/design.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 160,
                                  child: MyText(
                                    title: "دوره دزاين للمبتدئين",
                                    size: 12,
                                    color: MyColors.blackOpacity,
                                  ),
                                ),
                                SmoothStarRating(
                                  color: MyColors.gold,
                                  size: 15,
                                  borderColor: Colors.grey,
                                  rating: 4,
                                  starCount: 5,
                                  spacing: 0,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                                Container(
                                  width: 220,
                                  child: MyText(
                                    title: "المنصورة مصر الدقهلية",
                                    size: 10,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                                Container(
                                  width: 220,
                                  child: MyText(
                                    title: "اسم المعلم",
                                    size: 10,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.live_tv,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  width: 170,
                                  child: MyText(
                                    title: "اونلاين",
                                    size: 10,
                                    color: Colors.black54,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: MyColors.blackOpacity,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: MyText(
                                    title: "220 ريال",
                                    size: 10,
                                    color: MyColors.blackOpacity,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyText(
                  title: "عن المعلم",
                  size: 14,
                  color: MyColors.blackOpacity,
                ),
                MyText(
                  title: "التالته شمال",
                  size: 12,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: <Widget>[
                MyText(
                  title: "تواصل عبر",
                  size: 14,
                  color: MyColors.blackOpacity,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/facebook.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyText(
                        title: "فيسبوك",
                        size: 12,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: .5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/bluelinkedin.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyText(
                        title: "لينكد ان",
                        size: 12,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: .5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/youtube.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyText(
                        title: "يوتيوب",
                        size: 12,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: .5,
                ),
              ],
            ),
          ),
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed("/chat"),
        backgroundColor: MyColors.primary,
        isExtended: true,
        child: Icon(
          Icons.chat,
          size: 30,
          color: MyColors.white,
        ),
      ),
    );
  }
}
