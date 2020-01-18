import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yofiz/screens/dashboard.dart';
import 'package:yofiz/screens/onboarding_screen.dart';
import 'package:yofiz/screens/get_started.dart';

// void main() => runApp(MyApp());

int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MaterialApp(
      title: 'Yofiz',
      debugShowCheckedModeBanner: false,
      home: initScreen == 0 || initScreen == null
          ? OnboardingScreen()
          : firstNav(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MenuDashboardPage(),
        '/start': (BuildContext context) => GetStartedWidget(),
      },
    );
  }

  Widget firstNav() {
    return FutureBuilder<FirebaseUser>(
        future: FirebaseAuth.instance.currentUser(),
        builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
          if (snapshot.hasData) {
            // FirebaseUser user = snapshot.data; // this is your user instance
            // is because there is user already logged
            return MenuDashboardPage();
          }

          /// other way there is no user logged.
          return GetStartedWidget();
        });
  }
}
