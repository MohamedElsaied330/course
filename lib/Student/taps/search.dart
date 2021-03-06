import 'package:courses/publiac/constant/AnimationContainer.dart';
import 'package:courses/publiac/constant/LabelTextField.dart';
import 'package:courses/publiac/constant/MyColors.dart';
import 'package:courses/publiac/constant/MyText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  Search(GlobalKey<ScaffoldState> _scafold);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: PreferredSize(
          child: Container(
            child: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 50,
                child: LabelTextField(
                  controller: _textEditingController,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  isPassword: false,
                  label: "كلمة البحث",
                  type: TextInputType.text,
                ),
              ),
              actions: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(FontAwesomeIcons.filter,
                      size: 25, color: Colors.black87),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(80)),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: 6,
          itemBuilder: (BuildContext con, int index) {
            return AnimationContainer(
              index: index,
              vertical: true,
              distance: 150,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: Colors.grey.withOpacity(.5), width: 1),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/design.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: MyText(
                                      title: "دوره دزاين ",
                                      size: 18,
                                      color: MyColors.blackOpacity,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.close),
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
                                    Icons.person,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  MyText(
                                    title: "اسم المعلم",
                                    size: 15,
                                    color: Colors.black45,
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
                                    Icons.attach_money,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  MyText(
                                    title: "220 ريال",
                                    size: 15,
                                    color: MyColors.primary,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '250 ريال',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.primary),
                      alignment: Alignment.center,
                      child: MyText(
                        title: "اشتري الأن",
                        size: 14,
                        color: MyColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
