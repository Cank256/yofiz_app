import 'package:flutter/material.dart';
import 'package:yofiz/screens/menu.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:yofiz/utils/values/radii.dart';
import 'package:yofiz/utils/values/shadows.dart';

class Profile extends StatelessWidget {
  void onMenuIconPressed(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));

  void onBellIconPressed(BuildContext context) => Navigator.push(
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
              Color.fromARGB(255, 254, 254, 254),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 319,
                height: 37,
                margin: EdgeInsets.only(top: 45, right: 20),
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
                              "assets/images/menu-icon-5.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 61),
                      child: Text(
                        "User Profile",
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
                width: 311,
                height: 283,
                margin: EdgeInsets.only(top: 61, right: 21),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Opacity(
                        opacity: 0.62,
                        child: Container(
                          width: 262,
                          height: 283,
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
                        height: 272,
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
            ),
          ],
        ),
      ),
    );
  }
}
