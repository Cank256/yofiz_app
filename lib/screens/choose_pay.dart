import 'package:flutter/material.dart';
import 'package:yofiz/screens/menu.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/screens/other_fees_pay.dart';
import 'package:yofiz/screens/sch_fees_pay.dart';
import 'package:yofiz/utils/values/borders.dart';
import 'package:yofiz/utils/values/colors.dart';

class ChoosePay extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));

  void onBellIconPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Notifications()));

  void onSchBtnPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => SchFeesPay()));

  void onOtherBtnPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => OtherFeesPayWidget()));

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
              alignment: Alignment.topLeft,
              child: Container(
                width: 319,
                height: 37,
                margin: EdgeInsets.only(left: 19, top: 45),
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
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 54),
                child: Text(
                  "Choose what to pay for",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            Container(
              height: 153,
              margin: EdgeInsets.only(left: 21, top: 67, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 151,
                      height: 153,
                      child: FlatButton(
                        onPressed: () => this.onSchBtnPressed(context),
                        color: AppColors.primaryBackground,
                        shape: RoundedRectangleBorder(
                          side: Borders.secondaryBorder,
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                        ),
                        textColor: Color.fromARGB(255, 10, 10, 94),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "SCHOOL\nFEES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 10, 94),
                            fontFamily: ".SF NS Display",
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 151,
                      height: 153,
                      child: FlatButton(
                        onPressed: () => this.onOtherBtnPressed(context),
                        color: AppColors.primaryBackground,
                        shape: RoundedRectangleBorder(
                          side: Borders.secondaryBorder,
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                        ),
                        textColor: Color.fromARGB(255, 10, 10, 94),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "OTHER\nFEES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 10, 94),
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
          ],
        ),
      ),
    );
  }
}
