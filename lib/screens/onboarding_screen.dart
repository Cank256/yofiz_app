import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:yofiz/screens/dashboard.dart';
import 'package:yofiz/utils/styles/styles.dart';
import 'package:yofiz/screens/get_started.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // @override
  // initState() {
  //   FirebaseAuth.instance
  //       .currentUser()
  //       .then((currentUser) => {
  //             if (currentUser == null)
  //               {Navigator.pushReplacementNamed(context, "/start")}
  //             else
  //               {
  //                 {Navigator.pushReplacementNamed(context, "/home")}
  //               }
  //           })
  //       .catchError((err) => print(err));
  //   super.initState();
  //   // new Timer(new Duration(milliseconds: 200), () {
  //   //   checkFirstSeen();
  //   // });
  // }

  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool _seen = (prefs.getBool('seen') ?? false);

  //   if (_seen) {
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => new MenuDashboardPage()));
  //   } else {
  //     await prefs.setBool('seen', true);
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => new OnboardingScreen()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetStartedWidget()),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 510.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, bottom: 40.0, left: 40.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/start/onboarding0.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Pay School Fees',
                              textAlign: TextAlign.center,
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Transact all school related fees at your fingure tips',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, bottom: 40.0, left: 40.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/start/onboarding1.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Transact in Comfort',
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Whether on the move or at your place of convinience',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, bottom: 40.0, left: 40.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/start/onboarding2.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Track your Transactions',
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Search, Review and Print or Export Your Transaction History',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, bottom: 40.0, left: 40.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/start/onboarding3.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Get Started',
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Lets get you started with the simple, fast and reliable payment solution',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 50.0,
              width: 600.0,
              color: Color(0xFF5036D5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetStartedWidget()),
                  );
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Let\'s go',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
