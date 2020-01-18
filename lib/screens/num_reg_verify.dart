import 'package:flutter/material.dart';
import 'package:yofiz/screens/reg_details.dart';
import 'package:yofiz/utils/values/colors.dart';

class NumRegVerify extends StatelessWidget {
  void onComponent9Pressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => RegDetails()));

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
              height: 293,
              margin: EdgeInsets.only(top: 10, right: 17),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/head-section.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 49,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 202,
                            height: 189,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  child: Image.asset(
                                    "assets/images/group-47-2.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 13,
                                  right: 0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 33,
                                        top: 76,
                                        child: Image.asset(
                                          "assets/images/call.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        child: Opacity(
                                          opacity: 0.1,
                                          child: Image.asset(
                                            "assets/images/path-470-2.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 25,
                                        child: Image.asset(
                                          "assets/images/group-48.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                      Positioned(
                                        top: 53,
                                        right: 77,
                                        child: Image.asset(
                                          "assets/images/path-472.png",
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
                            margin: EdgeInsets.only(top: 23),
                            child: Text(
                              "Verification",
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
                margin: EdgeInsets.only(top: 18),
                child: Text(
                  "Enter a 4 digit number that\n was sent to +256 706 782810",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.224,
                    height: 1.71429,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 319,
                height: 190,
                margin: EdgeInsets.only(top: 15, right: 20),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(28, 0, 0, 0),
                      offset: Offset(3, 3),
                      blurRadius: 25,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 117,
                        margin: EdgeInsets.only(left: 23, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 24,
                              margin: EdgeInsets.only(left: 48, right: 56),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 14,
                                      height: 23,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "0",
                                          contentPadding: EdgeInsets.all(0),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: ".SF NS Display",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                        maxLines: 1,
                                        autocorrect: false,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 12,
                                      height: 21,
                                      margin: EdgeInsets.only(left: 38),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "7",
                                          contentPadding: EdgeInsets.all(0),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                        maxLines: 1,
                                        autocorrect: false,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 14,
                                      height: 23,
                                      margin: EdgeInsets.only(right: 37),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "8",
                                          contentPadding: EdgeInsets.all(0),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: ".SF NS Display",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                        maxLines: 1,
                                        autocorrect: false,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 15,
                                      height: 24,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "3",
                                          contentPadding: EdgeInsets.all(0),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: ".SF NS Display",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 21,
                                        ),
                                        maxLines: 1,
                                        autocorrect: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              margin:
                                  EdgeInsets.only(left: 38, top: 14, right: 45),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 35,
                                      height: 1,
                                      child: Image.asset(
                                        "assets/images/path-472-2.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 35,
                                      height: 1,
                                      margin: EdgeInsets.only(left: 16),
                                      child: Image.asset(
                                        "assets/images/path-472-2.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 35,
                                      height: 1,
                                      margin: EdgeInsets.only(right: 16),
                                      child: Image.asset(
                                        "assets/images/path-472-2.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 35,
                                      height: 1,
                                      child: Image.asset(
                                        "assets/images/path-475.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                ],
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
                                      this.onComponent9Pressed(context),
                                  color: AppColors.secondaryElement,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                  ),
                                  textColor: Color.fromARGB(255, 255, 255, 255),
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "verify",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
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
                    ),
                    Container(
                      width: 19,
                      height: 19,
                      margin: EdgeInsets.only(top: 50, right: 33),
                      child: Image.asset(
                        "assets/images/path-476.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 26),
                child: Text(
                  "re-send code in 0:59 ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 79, 68, 255),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
