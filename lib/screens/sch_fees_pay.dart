import 'package:flutter/material.dart';
import 'package:yofiz/screens/confirm_pay.dart';
import 'package:yofiz/utils/values/borders.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class SchFeesPay extends StatelessWidget {
  void onBackIconPressed(BuildContext context) {
    Navigator.pop(context);
  }

  void onInfoIconPressed(BuildContext context) {}

  void onPayButtonPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => ConfirmPay()));

  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 319,
                  height: 37,
                  margin: EdgeInsets.only(left: 18, top: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 22,
                        child: FlatButton(
                          onPressed: () => this.onBackIconPressed(context),
                          color: Color.fromARGB(0, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
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
                            borderRadius: BorderRadius.all(Radius.circular(0)),
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
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 28),
                  child: Text(
                    "School Fees",
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
                alignment: Alignment.topCenter,
                child: Container(
                  width: 311,
                  height: 343,
                  margin: EdgeInsets.only(top: 23),
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
                                  height: 343,
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
                                height: 330,
                                width: 400,
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
                        top: 22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Student No.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  letterSpacing: 1.458,
                                ),
                              ),
                            ),
                            // Container(
                            //   height: 41,
                            //   margin: EdgeInsets.only(left: 3, top: 18),
                            //   decoration: BoxDecoration(
                            //     color: AppColors.primaryElement,
                            //     border: Border.fromBorderSide(
                            //         Borders.secondaryBorder),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(14)),
                            //   ),
                            //   child: TextField(
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 0, 0, 0),
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 12,
                            //     ),
                            //     maxLines: 1,
                            //     autocorrect: false,
                            //   ),
                            // ),
                            // Align(
                            //   alignment: Alignment.topLeft,
                            //   child: Container(
                            //     margin: EdgeInsets.only(left: 6, top: 20),
                            //     child: Text(
                            //       "Amount",
                            //       textAlign: TextAlign.center,
                            //       style: TextStyle(
                            //         color: AppColors.primaryText,
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         letterSpacing: 1.458,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   height: 41,
                            //   margin: EdgeInsets.only(left: 3, top: 18),
                            //   decoration: BoxDecoration(
                            //     color: AppColors.primaryElement,
                            //     border: Border.fromBorderSide(
                            //         Borders.secondaryBorder),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(14)),
                            //   ),
                            //   child: TextField(
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 0, 0, 0),
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 12,
                            //     ),
                            //     maxLines: 1,
                            //     autocorrect: false,
                            //   ),
                            // ),
                            // Align(
                            //   alignment: Alignment.topLeft,
                            //   child: Container(
                            //     margin: EdgeInsets.only(left: 3, top: 17),
                            //     child: Text(
                            //       "Payment Type",
                            //       textAlign: TextAlign.center,
                            //       style: TextStyle(
                            //         color: AppColors.primaryText,
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         letterSpacing: 1.458,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Spacer(),
                            // Container(
                            //   height: 41,
                            //   margin: EdgeInsets.only(left: 3),
                            //   decoration: BoxDecoration(
                            //     color: AppColors.primaryElement,
                            //     border: Border.fromBorderSide(
                            //         Borders.secondaryBorder),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(14)),
                            //   ),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       hintText: "Mobile Money",
                            //       contentPadding: EdgeInsets.all(0),
                            //       border: InputBorder.none,
                            //     ),
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 26, 26, 26),
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 18,
                            //     ),
                            //     maxLines: 1,
                            //     autocorrect: false,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Spacer(),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 202,
                  height: 52,
                  margin: EdgeInsets.only(top: 25),
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
                      "PAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: ".SF NS Display",
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}