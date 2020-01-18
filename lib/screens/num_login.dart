import 'package:flutter/material.dart';
import 'package:yofiz/screens/get_started.dart';
import 'package:yofiz/screens/num_login_verify.dart';
import 'package:yofiz/utils/values/colors.dart';

class NumLogin extends StatelessWidget {
  void onComponent15Pressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => NumLoginVerify()));

  void onBackPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => GetStartedWidget()));

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
            Container(
              height: 294,
              margin: EdgeInsets.only(left: 16, top: 31, right: 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 7,
                    right: 0,
                    child: Image.asset(
                      "assets/images/head-section.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 13,
                    top: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 57,
                            height: 21,
                            child: FlatButton(
                              onPressed: () => this.onBackPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 27, 36, 92),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/icon-3.png",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Back",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 27, 36, 92),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 231,
                            height: 195,
                            margin: EdgeInsets.only(top: 21),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 25,
                                  right: 0,
                                  child: Image.asset(
                                    "assets/images/group-43-2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 0,
                                  right: 14,
                                  child: Image.asset(
                                    "assets/images/group-38-2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 40,
                                  top: 57,
                                  child: Image.asset(
                                    "assets/images/ellipse-133.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 22),
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.accentText,
                                fontWeight: FontWeight.w400,
                                fontSize: 27,
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
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Enter your mobile number to \nreceive a verification code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    letterSpacing: 0.24,
                    height: 1.93333,
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 320,
                height: 191,
                margin: EdgeInsets.only(right: 19, bottom: 36),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 46,
                            child: Image.asset(
                              "assets/images/group-21.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 191,
                              decoration: BoxDecoration(
                                color: AppColors.primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(28, 0, 0, 0),
                                    offset: Offset(3, 3),
                                    blurRadius: 25,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                              ),
                              child: Container(),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 272,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                      border: Border.all(
                                        width: 1,
                                        color: Color.fromARGB(92, 108, 99, 255),
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "256 706 782810",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 79, 68, 255),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            ),
                                            maxLines: 1,
                                            autocorrect: false,
                                          ),
                                        ),
                                        Positioned(
                                          right: 9,
                                          child: Image.asset(
                                            "assets/images/path-476.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 272,
                                    height: 50,
                                    margin: EdgeInsets.only(top: 28),
                                    child: FlatButton(
                                      onPressed: () =>
                                          this.onComponent15Pressed(context),
                                      color: AppColors.secondaryElement,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      ),
                                      textColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        "get code",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
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
                    Positioned(
                      left: 43,
                      top: 46,
                      child: Image.asset(
                        "assets/images/uganda-flag.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
