import 'package:flutter/material.dart';
import 'package:yofiz/screens/menu.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class Home extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }

  void onBellIconPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Notifications()));

  void onDashHistoryBtnPressed(BuildContext context) => Navigator.push(
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
              Color.fromARGB(255, 254, 254, 253),
              Color.fromARGB(255, 255, 255, 254),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 319,
                height: 37,
                margin: EdgeInsets.only(left: 17, top: 40),
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
                      margin: EdgeInsets.only(right: 64),
                      child: Text(
                        "Dashboard",
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
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 154,
                height: 30,
                margin: EdgeInsets.only(top: 21, right: 97),
                child: Row(
                  children: [
                    Text(
                      "Hello,",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Nkunze",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 311,
                height: 202,
                margin: EdgeInsets.only(top: 15),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            child: Opacity(
                              opacity: 0.62,
                              child: Container(
                                width: 262,
                                height: 202,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryBackground,
                                  boxShadow: [
                                    Shadows.secondaryShadow,
                                  ],
                                  borderRadius: Radii.k20pxRadius,
                                ),
                                child: Container(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 195,
                              decoration: BoxDecoration(
                                color: AppColors.primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(20, 0, 0, 0),
                                    offset: Offset(0, 30),
                                    blurRadius: 40,
                                  ),
                                ],
                                borderRadius: Radii.k20pxRadius,
                              ),
                              child: Container(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 10,
                      right: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text(
                                "Student Details",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 15,
                            margin: EdgeInsets.only(left: 8, top: 9, right: 1),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                    opacity: 0.54,
                                    child: Text(
                                      "Uwimana Esther",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                    opacity: 0.54,
                                    child: Text(
                                      "70025601",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 8, top: 3),
                              child: Opacity(
                                opacity: 0.54,
                                child: Text(
                                  "Lubiri Secondary School",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.36,
                            child: Container(
                              height: 1,
                              margin: EdgeInsets.only(top: 5, right: 11),
                              decoration: BoxDecoration(
                                color: AppColors.accentElement,
                              ),
                              child: Container(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 8, top: 8),
                              child: Text(
                                "Last Transaction",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 33,
                            margin: EdgeInsets.only(left: 7, top: 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 112,
                                    height: 33,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 1),
                                            child: Opacity(
                                              opacity: 0.54,
                                              child: Text(
                                                "School Fees",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color:
                                                      AppColors.secondaryText,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Opacity(
                                              opacity: 0.54,
                                              child: Text(
                                                "08 Jan 2020 | 21:12",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color:
                                                      AppColors.secondaryText,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "UGX 500,000",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 180,
                              height: 30,
                              child: FlatButton(
                                onPressed: () =>
                                    this.onDashHistoryBtnPressed(context),
                                color: AppColors.secondaryElement,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(11)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "See History",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
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
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Previous Transactions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 14.0),
              padding: EdgeInsets.zero,
              height: 155.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: Radii.k20pxRadius,
                    ),
                    margin: EdgeInsets.only(right: 5, left: 30),
                    padding: EdgeInsets.all(20),
                    width: 300.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 15,
                          margin: EdgeInsets.only(left: 8, right: 1),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.54,
                                  child: Text(
                                    "School Fees",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.54,
                                  child: Text(
                                    "CYU200011256100",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 8, top: 3),
                            child: Opacity(
                              opacity: 0.54,
                              child: Text(
                                "Lubiri Secondary School",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.36,
                          child: Container(
                            height: 1,
                            margin:
                                EdgeInsets.only(top: 5, right: 11, bottom: 10),
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                            ),
                            child: Container(),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 112,
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 7),
                                          child: Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              "08 Jan 2020 | 21:12",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.secondaryText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(top: 3, left: 7),
                                          child: Opacity(
                                            opacity: 0.54,
                                            child: Text(
                                              "Amount",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.secondaryText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(top: 3, left: 7),
                                          child: Opacity(
                                            opacity: 0.54,
                                            child: Text(
                                              "Charge",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.secondaryText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(top: 3, left: 7),
                                          child: Opacity(
                                            opacity: 0.54,
                                            child: Text(
                                              "Total",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.secondaryText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(top: 18),
                                  child: Text(
                                    "500,000\n500\nUGX 500,500",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: Radii.k20pxRadius,
                    ),
                    margin: EdgeInsets.only(right: 5, left: 15),
                    width: 300.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: Radii.k20pxRadius,
                    ),
                    margin: EdgeInsets.only(right: 5, left: 20),
                    width: 300.0,
                    // color: Colors.green,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: Radii.k20pxRadius,
                    ),
                    margin: EdgeInsets.only(right: 5, left: 20),
                    width: 300.0,
                    // color: Colors.yellow,
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(
            //     right: 5,
            //     left: 20,
            //     top: 5,
            //   ),
            //   child: Column(
            //     children: <Widget>[
            //       Icon(
            //         Icons.arrow_back,
            //         color: Colors.blue,
            //         size: 20,
            //       ),
            //       Text(
            //         "Swipe to the left",
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           color: AppColors.accentText,
            //           fontWeight: FontWeight.w600,
            //           fontSize: 15,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
