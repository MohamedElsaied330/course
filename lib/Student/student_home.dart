import 'package:courses/Student/taps/Main.dart';
import 'package:courses/Student/taps/favourite.dart';
import 'package:courses/Student/taps/myCourses.dart';
import 'package:courses/Student/taps/profile.dart';
import 'package:courses/Student/taps/search.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:flutter/material.dart';

class StudentHome extends StatefulWidget {
  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scafold,
          backgroundColor: Colors.white,
          body: TabBarView(children: [
            Main(_scafold), //inOrder
            Search(_scafold),
            Favourite(_scafold),
            MyCourses(_scafold),
            Profile(_scafold)
          ]),
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(color: MyColors.white, boxShadow: [
              BoxShadow(color: MyColors.blackOpacity, blurRadius: 5)
            ]),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 25,
                    color: MyColors.primary,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: MyColors.blackOpacity,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    size: 25,
                    color: MyColors.blackOpacity,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.library_books,
                    size: 25,
                    color: MyColors.blackOpacity,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    size: 25,
                    color: MyColors.blackOpacity,
                  ),
                )
              ],
              unselectedLabelColor: MyColors.Grey,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: MyColors.primary,
              labelColor: MyColors.primary,
            ),
          ),
        ));
  }
}
