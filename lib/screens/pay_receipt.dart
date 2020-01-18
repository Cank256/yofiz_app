import 'package:flutter/material.dart';
import 'package:yofiz/utils/values/borders.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class PayReceiptWidget extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) {}

  void onGroup260Pressed(BuildContext context) {}

  void onExportBtnPressed(BuildContext context) {}

  void onShareBtnPressed(BuildContext context) {}

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
              left: 1,
              top: 25,
              right: -1,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 319,
                      height: 37,
                      margin: EdgeInsets.only(right: 21),
                      child: Row(
                        children: [
                          Container(
                            width: 29,
                            height: 22,
                            child: FlatButton(
                              onPressed: () => this.onMenuIconPressed(context),
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
                                  Image.asset(
                                    "assets/images/menu-icon-2.png",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 76),
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
                              onPressed: () => this.onGroup260Pressed(context),
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
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Payment Receipt",
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 291,
                      height: 395,
                      margin: EdgeInsets.only(top: 7, right: 29),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 49,
                            right: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 19,
                                  margin: EdgeInsets.only(left: 3, right: 1),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 2),
                                          child: Text(
                                            "Payment ID.",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "CYU200011256100",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 21,
                                  margin: EdgeInsets.only(
                                      left: 2, top: 9, right: 7),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "Student No.",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "70025601",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  margin: EdgeInsets.only(
                                      left: 2, top: 10, right: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            "Name",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "UwimanaEsther",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 19,
                                  margin: EdgeInsets.only(
                                      left: 2, top: 11, right: 7),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 2),
                                          child: Text(
                                            "School",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Lubiri Secondary School",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  margin: EdgeInsets.only(
                                      left: 1, top: 10, right: 3),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            "School Account No.",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "300845796213",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 21,
                                  margin: EdgeInsets.only(
                                      left: 1, top: 9, right: 9),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "Paying For",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "School Fees",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  margin: EdgeInsets.only(
                                      left: 1, top: 10, right: 12),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            "Type of Payment",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Mobile Money",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 21,
                                  margin: EdgeInsets.only(
                                      left: 3, top: 9, right: 8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Text(
                                            "Amount",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Ugx. 500,000",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  margin: EdgeInsets.only(
                                      left: 3, top: 10, right: 9),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            "Charge",
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Ugx. 500",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 2, right: 14, bottom: 23),
                                  child: Text(
                                    "Amount in Words(total)  Five Hundred Thousand Shillings Only",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      letterSpacing: 1.134,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 19,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "Date/Time",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            letterSpacing: 1.134,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 1),
                                          child: Text(
                                            "10 Dec 2019 | 12:24:23",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: 1.296,
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
                            top: 0,
                            child: Image.asset(
                              "assets/images/splash-logo.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 91,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 24,
                          right: 25,
                          bottom: 58,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 130,
                                  height: 33,
                                  child: FlatButton(
                                    onPressed: () =>
                                        this.onExportBtnPressed(context),
                                    color: Color.fromARGB(0, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    textColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "Export / Print",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 130,
                                  height: 33,
                                  child: FlatButton(
                                    onPressed: () =>
                                        this.onShareBtnPressed(context),
                                    color: Color.fromARGB(0, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    textColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Share",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Image.asset(
                                          "assets/images/share3.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                left: 0,
                                top: 18,
                                right: 0,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        height: 47,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryElement,
                                          border: Border.fromBorderSide(
                                              Borders.primaryBorder),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9)),
                                        ),
                                        child: Container(),
                                      ),
                                    ),
                                    Positioned(
                                      left: 13,
                                      top: 7,
                                      right: 13,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 33,
                                              height: 33,
                                              child: Image.asset(
                                                "assets/images/home-3.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 35,
                                              height: 33,
                                              margin: EdgeInsets.only(
                                                  left: 33, top: 1),
                                              child: Image.asset(
                                                "assets/images/history-3.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 32,
                                              height: 32,
                                              margin: EdgeInsets.only(
                                                  top: 1, right: 35),
                                              child: Image.asset(
                                                "assets/images/mail-2.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 33,
                                              height: 33,
                                              child: Image.asset(
                                                "assets/images/group-274-2.png",
                                                fit: BoxFit.none,
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
                                top: 0,
                                child: Image.asset(
                                  "assets/images/ellipse-167.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                              Positioned(
                                top: 12,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: 36,
                                        height: 21,
                                        child: Image.asset(
                                          "assets/images/pay-icon.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          "PAY",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 9, 34, 94),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0.972,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Opacity(
                      opacity: 0.62,
                      child: Container(
                        width: 262,
                        height: 427,
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
                      height: 416,
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
          ],
        ),
      ),
    );
  }
}
