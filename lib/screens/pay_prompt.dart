import 'package:flutter/material.dart';
import 'package:yofiz/utils/values/colors.dart';

class PayPrompt extends StatelessWidget {
  void onBackIconPressed(BuildContext context) {
    Navigator.pop(context);
  }

  void onInfoIconPressed(BuildContext context) {}

  void onPayButtonPressed(BuildContext context) {}

  void onContactUsPressed(BuildContext context) {}

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
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 319,
                      height: 37,
                      margin: EdgeInsets.only(right: 23, top: 20),
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
                  Container(
                    margin: EdgeInsets.only(left: 7, top: 50, right: 6),
                    child: Text(
                      "Please wait for a prompt on your \nphone and input your Mobile \nMoney Pin Code to authorize \npayment",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: 1.62,
                        height: 1.25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 205),
                      child: Text(
                        "No prompt yet?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 1.62,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 186,
                      height: 52,
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: FlatButton(
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
                          "Try Again",
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 40, top: 5),
                      child: Text(
                        "OR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 1.134,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 116,
                      height: 21,
                      margin: EdgeInsets.only(bottom: 40),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            left: 0,
                            child: Image.asset(
                              "assets/images/phone.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            right: 0,
                            child: FlatButton(
                              onPressed: () => this.onContactUsPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 26, 26, 26),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Contact Us",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 26, 26, 26),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(
                "assets/images/refresh.png",
                fit: BoxFit.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
