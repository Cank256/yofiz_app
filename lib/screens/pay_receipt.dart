import 'package:flutter/material.dart';
import 'package:yofiz/screens/menu.dart';
import 'package:yofiz/screens/notifications.dart';
// import 'package:yofiz/utils/values/borders.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class PayReceiptWidget extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }

  void onGroup260Pressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Notifications()));

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
              top: 50,
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
                      width: 300,
                      height: 377,
                      margin: EdgeInsets.only(top: 19, right: 24),
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
                                      width: 275,
                                      height: 377,
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
                                    height: 366,
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
                            top: 30,
                            right: 15,
                            bottom: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 19,
                                  margin: EdgeInsets.only(left: 2),
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
                                            fontWeight: FontWeight.w800,
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
                                      left: 1, top: 9, right: 6),
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
                                            fontWeight: FontWeight.w800,
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
                                      left: 1, top: 10, right: 9),
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
                                            fontWeight: FontWeight.w800,
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
                                      left: 1, top: 10, right: 6),
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
                                            fontWeight: FontWeight.w800,
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
                                  margin: EdgeInsets.only(top: 9),
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
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  margin: EdgeInsets.only(top: 8, right: 8),
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
                                            fontWeight: FontWeight.w800,
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
                                  margin: EdgeInsets.only(top: 9, right: 11),
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
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  margin: EdgeInsets.only(
                                      left: 2, top: 8, right: 7),
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
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                            letterSpacing: 1.296,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Container(
                                //   height: 21,
                                //   margin: EdgeInsets.only(left: 2, right: 8, top: 10),
                                //   child: Row(
                                //     crossAxisAlignment: CrossAxisAlignment.stretch,
                                //     children: [
                                //       Align(
                                //         alignment: Alignment.bottomLeft,
                                //         child: Text(
                                //           "Charge",
                                //           textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             color: AppColors.primaryText,
                                //             fontWeight: FontWeight.w400,
                                //             fontSize: 14,
                                //             letterSpacing: 1.134,
                                //           ),
                                //         ),
                                //       ),
                                //       Spacer(),
                                //       Align(
                                //         alignment: Alignment.bottomLeft,
                                //         child: Container(
                                //           margin: EdgeInsets.only(bottom: 2),
                                //           child: Text(
                                //             "Ugx. 500",
                                //             textAlign: TextAlign.center,
                                //             style: TextStyle(
                                //               color: AppColors.primaryText,
                                //               fontWeight: FontWeight.w800,
                                //               fontSize: 16,
                                //               letterSpacing: 1.296,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 1, right: 13, top: 10),
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
                      margin: EdgeInsets.only(top: 15),
                      child: FlatButton(
                        onPressed: () => this.onExportBtnPressed(context),
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
                          "Export / Print",
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
                  // Container(
                  //   height: 91,
                  //   child: Stack(
                  //     alignment: Alignment.center,
                  //     children: [
                  //       Positioned(
                  //         left: 24,
                  //         right: 25,
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.stretch,
                  //           children: [
                  //             Align(
                  //               alignment: Alignment.bottomLeft,
                  //               child: Container(
                  //                 width: 130,
                  //                 height: 33,
                  //                 child: FlatButton(
                  //                   onPressed: () =>
                  //                       this.onExportBtnPressed(context),
                  //                   color: Color.fromARGB(0, 0, 0, 0),
                  //                   shape: RoundedRectangleBorder(
                  //                     borderRadius:
                  //                         BorderRadius.all(Radius.circular(0)),
                  //                   ),
                  //                   textColor:
                  //                       Color.fromARGB(255, 255, 255, 255),
                  //                   padding: EdgeInsets.all(0),
                  //                   child: Text(
                  //                     "Export / Print",
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(
                  //                       color:
                  //                           Color.fromARGB(255, 255, 255, 255),
                  //                       fontWeight: FontWeight.w400,
                  //                       fontSize: 16,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             Spacer(),
                  //             Align(
                  //               alignment: Alignment.bottomLeft,
                  //               child: Container(
                  //                 width: 130,
                  //                 height: 33,
                  //                 child: FlatButton(
                  //                   onPressed: () =>
                  //                       this.onShareBtnPressed(context),
                  //                   color: Color.fromARGB(0, 0, 0, 0),
                  //                   shape: RoundedRectangleBorder(
                  //                     borderRadius:
                  //                         BorderRadius.all(Radius.circular(0)),
                  //                   ),
                  //                   textColor:
                  //                       Color.fromARGB(255, 255, 255, 255),
                  //                   padding: EdgeInsets.all(0),
                  //                   child: Row(
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(
                  //                         "Share",
                  //                         textAlign: TextAlign.center,
                  //                         style: TextStyle(
                  //                           color: Color.fromARGB(
                  //                               255, 255, 255, 255),
                  //                           fontWeight: FontWeight.w400,
                  //                           fontSize: 16,
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         width: 11,
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/share3.png",
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
