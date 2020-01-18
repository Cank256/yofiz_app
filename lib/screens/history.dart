import 'package:flutter/material.dart';
import 'package:yofiz/screens/menu.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class History extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }

  void onBellIconPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Notifications()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            stops: [
              0,
              0.58987,
              0.72737,
              0.81056,
              0.88583,
              1,
            ],
            colors: [
              Color.fromARGB(181, 212, 208, 238),
              Color.fromARGB(191, 240, 239, 246),
              Color.fromARGB(255, 246, 246, 249),
              Color.fromARGB(255, 252, 252, 253),
              Color.fromARGB(255, 254, 254, 254),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 319,
                height: 37,
                margin: EdgeInsets.only(top: 45, right: 19),
                child: Row(
                  children: [
                    Container(
                      width: 29,
                      height: 22,
                      child: FlatButton(
                        onPressed: () => this.onMenuIconPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/menu-icon-6.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 86),
                      child: Text(
                        "History",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 37,
                      child: FlatButton(
                        onPressed: () => this.onBellIconPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/bell-icon.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              margin: EdgeInsets.only(left: 7, top: 10, right: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nSchool Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "Today\nUGX 500,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(top: 10, right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nStudy Tour",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "10 Dec 2019\nUGX 100,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(top: 10, right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nSchool Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "29 Nov 2019\nUGX 350,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(top: 10, right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nSchool Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "02 Jun 2019\nUGX 500,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(top: 10, right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nUniform",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "15 May 2019\nUGX 140,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(top: 10, right: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nSchool Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "21 Mar 2019\nUGX 350,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(left: 4, top: 10),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nSchool Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "02 Feb 2019\nUGX 500,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 74,
                            margin: EdgeInsets.only(right: 4, top: 10),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k20pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Lubiri Secondary School\nRegisteration",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 16),
                                  child: Text(
                                    "20 Jan 2019\nUGX 100,000",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 166, 177, 192),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.875,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
