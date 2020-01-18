import 'package:flutter/material.dart';
import 'package:yofiz/screens/dashboard.dart';
import 'package:yofiz/screens/get_started.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/utils/services/auth.dart';
import 'package:yofiz/utils/values/colors.dart';

class Menu extends StatelessWidget {
  void onBellIconPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Notifications()));

  void onClosePressed(BuildContext context) {
    Navigator.pop(context);
  }

  void onContactPressed(BuildContext context) {}

  void onHomePressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => MenuDashboardPage()));

  void onShareAppPressed(BuildContext context) {}

  void onLogoutPressed(BuildContext context) {}

  void onAboutPressed(BuildContext context) {}

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 319,
                height: 37,
                margin: EdgeInsets.only(left: 25, top: 50),
                child: Row(
                  children: [
                    Container(
                      width: 29,
                      height: 22,
                      child: FlatButton(
                        onPressed: () => this.onClosePressed(context),
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
                              "assets/images/close-2.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 90),
                      child: Text(
                        "Menu",
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
                      margin: EdgeInsets.only(right: 15),
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
            Container(
              width: 137,
              height: 35,
              margin: EdgeInsets.only(left: 47, top: 75),
              child: FlatButton(
                onPressed: () => this.onHomePressed(context),
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
                      "assets/images/home2.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Home",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 253,
              height: 35,
              margin: EdgeInsets.only(left: 48, top: 32),
              child: FlatButton(
                onPressed: () => this.onContactPressed(context),
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
                      "assets/images/phone-2.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Contact Support",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 233,
              height: 35,
              margin: EdgeInsets.only(left: 47, top: 32),
              child: FlatButton(
                onPressed: () => this.onShareAppPressed(context),
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
                      "assets/images/network.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Share this App",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 148,
              height: 35,
              margin: EdgeInsets.only(left: 47, top: 32),
              child: FlatButton(
                onPressed: () => signOut().whenComplete(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        // return HomePage();
                        return GetStartedWidget();
                      },
                    ),
                  );
                }),
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
                      "assets/images/logout.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Logout",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
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
                width: 128,
                height: 81,
                margin: EdgeInsets.only(bottom: 102),
                child: FlatButton(
                  onPressed: () => this.onAboutPressed(context),
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
                        "assets/images/info.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.accentText,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ],
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
