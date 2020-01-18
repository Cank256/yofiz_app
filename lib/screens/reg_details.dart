import 'package:flutter/material.dart';
import 'package:yofiz/screens/dashboard.dart';
import 'package:yofiz/utils/values/colors.dart';

class RegDetails extends StatelessWidget {
  void onComponent10Pressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => MenuDashboardPage()));

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
              height: 287,
              margin: EdgeInsets.only(left: 9, top: 18, right: 8),
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
                    top: 48,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 204,
                            height: 189,
                            child: Image.asset(
                              "assets/images/head-image-2.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              "More Details",
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
                  Positioned(
                    top: 38,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 6,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              "assets/images/path-470-3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 30,
                          right: 0,
                          child: Image.asset(
                            "assets/images/group-55.png",
                            fit: BoxFit.cover,
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
                width: 285,
                height: 203,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: AppColors.secondaryBackground,
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 215, 218, 235),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 27, 36, 92),
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                        maxLines: 1,
                        autocorrect: false,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 25,
                      right: 20,
                      bottom: 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 83,
                              height: 20,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "First Name",
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 27, 36, 92),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.only(top: 22),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 218, 235),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.5)),
                            ),
                            child: Container(),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.only(top: 67),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 218, 235),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.5)),
                            ),
                            child: Container(),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 41,
                              height: 20,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 27, 36, 92),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                                maxLines: 1,
                                autocorrect: false,
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
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 272,
                height: 50,
                margin: EdgeInsets.only(bottom: 51),
                child: FlatButton(
                  onPressed: () => this.onComponent10Pressed(context),
                  color: AppColors.secondaryElement,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "Done!",
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
    );
  }
}
