import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:yofiz/screens/dashboard.dart';
import 'package:yofiz/screens/num_login.dart';
import 'package:yofiz/screens/num_reg.dart';
import 'package:yofiz/utils/services/auth.dart';
import 'package:yofiz/utils/values/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
// import 'package:yofiz/utils/values/values.dart';

class GetStartedWidget extends StatefulWidget {
  @override
  _GetStartedWidgetState createState() => _GetStartedWidgetState();
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
  void onLoginWithNumberBtPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => NumLogin()));

  void onComponent18Pressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => NumReg()));

  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

  _loginWithFB() async {
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=$token');
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false);
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false);
        break;
    }
  }

  void facebookSignIn() {
    _loginWithFB().whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return MenuDashboardPage();
          },
        ),
      );
    });
  }

  void googleSignIn() {
    signInWithGoogle().whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return MenuDashboardPage();
          },
        ),
      );
    });
  }

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
          alignment: Alignment.centerRight,
          children: [
            Positioned(
              left: 16,
              top: 45,
              right: 1,
              bottom: 41,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 287,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 6,
                          child: Image.asset(
                            "assets/images/head-image.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 272,
                      height: 50,
                      margin: EdgeInsets.only(top: 36, right: 36),
                      child: FlatButton(
                        onPressed: () => this.onComponent18Pressed(context),
                        color: AppColors.secondaryElement,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Create Account",
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 249,
                      height: 18,
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Container(
                            width: 113,
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                            ),
                            child: Container(),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 4),
                            child: Text(
                              "OR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 112, 107, 107),
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            width: 106,
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                            ),
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 273,
                      height: 50,
                      margin: EdgeInsets.only(right: 35, bottom: 30),
                      child: FlatButton(
                        onPressed: () =>
                            this.onLoginWithNumberBtPressed(context),
                        color: AppColors.primaryElement,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 79, 68, 255),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        textColor: Color.fromARGB(255, 79, 68, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "login with Number",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 79, 68, 255),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(left: 80, right: 99),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 64,
                            height: 64,
                            child: FlatButton(
                              onPressed: () => this.googleSignIn(),
                              color: AppColors.primaryBackground,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromARGB(217, 223, 76, 76),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/google.png",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 64,
                            height: 64,
                            child: FlatButton(
                              onPressed: () => this.facebookSignIn(),
                              color: AppColors.primaryBackground,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromARGB(255, 31, 80, 239),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/facebook.png",
                                  ),
                                ],
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
              right: 72,
              child: Text(
                "Let's Get Started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.accentText,
                  fontWeight: FontWeight.w400,
                  fontSize: 27,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
