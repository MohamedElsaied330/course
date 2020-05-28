import 'package:courses/Student/taps/favouriteTaps/courses.dart';
import 'package:courses/Student/taps/favouriteTaps/teach.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  var _scafold;

  Favourite(GlobalKey<ScaffoldState> _scafold);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  GlobalKey<ScaffoldState> _scafold = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Container(
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: MyText(
                      title: 'Favorite',
                      size: 22,
                      color: MyColors.primary,
                    ),
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.red,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.black54, blurRadius: 5)
                    ]),
                    child: TabBar(
                        labelColor: MyColors.blackOpacity,
                        indicatorColor: MyColors.blackOpacity,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: MyColors.Grey,
                        tabs: [
                          Tab(
                            child: MyText(
                              title: 'Teacher',
                              size: 22,
                              color: MyColors.blackOpacity.withOpacity(.8),
                            ),
                          ),
                          Tab(
                            child: MyText(
                              title: 'Courses',
                              size: 22,
                              color: MyColors.blackOpacity.withOpacity(.8),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            Courses(widget._scafold),
            Teacher(widget._scafold)
          ]),
        ));
  }
}
