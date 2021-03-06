import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:yofiz/screens/pay_prompt.dart';
import 'package:yofiz/utils/values/borders.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class MmNum extends StatefulWidget {
  @override
  _MmNumState createState() => _MmNumState();
}

class _MmNumState extends State<MmNum> {
  void onBackIconPressed(BuildContext context) {
    Navigator.pop(context);
  }

  void onInfoIconPressed(BuildContext context) {}

  void onPayButtonPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => PayPrompt()));

  // String serverResponse = 'Server response';
  Key _mnum = new GlobalKey(debugLabel: 'inputText');

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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 26,
              right: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 319,
                      height: 37,
                      margin: EdgeInsets.only(left: 18, top: 15),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 22,
                            child: FlatButton(
                              onPressed: () => this.onBackIconPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 80),
                            child: Text(
                              "Payment",
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
                              onPressed: () => this.onInfoIconPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.info,
                                    size: 30,
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
                      width: 311,
                      height: 210,
                      margin: EdgeInsets.only(top: 45, right: 24),
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
                                      width: 280,
                                      height: 259,
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
                                    height: 248,
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
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Enter Your Mobile Money Number\n(MTN)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.5625,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 244,
                                    height: 53,
                                    margin: EdgeInsets.only(
                                        top: 15, right: 18, bottom: 9),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                      border: Border.fromBorderSide(
                                          Borders.secondaryBorder),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(24)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 166,
                                          height: 29,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: TextField(
                                              key: _mnum,
                                              decoration: InputDecoration(
                                                hintText: "0784881722",
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 26, 26, 26),
                                                fontFamily: ".SF NS Display",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 25,
                                              ),
                                              maxLines: 1,
                                              autocorrect: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                    "assets/images/momo.png",
                                    fit: BoxFit.none,
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
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 235,
                      height: 52,
                      margin: EdgeInsets.only(top: 30),
                      child: RaisedButton(
                        onPressed: () => this.onPayButtonPressed(context),
                        color: AppColors.secondaryElement,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(38, 112, 112, 112),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Send Payment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: ".SF NS Display",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
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
    );
  }

  // _makeGetRequest() async {
  //   Response response = await get(_localhost());
  //   setState(() {
  //     serverResponse = response.body;
  //     print(serverResponse);
  //   });
  // }

  // String _localhost() {
  //   if (Platform.isAndroid)
  //     return 'http://yofiz-momo-yofiz.apps.us-east-1.starter.openshift-online.com/';
  //   else // for iOS simulator
  //     return 'http://localhost:3000';
  // }
}
