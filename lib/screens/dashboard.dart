import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:yofiz/screens/choose_pay.dart';
import 'package:yofiz/screens/history.dart';
import 'package:yofiz/screens/home.dart';
import 'package:yofiz/screens/notifications.dart';
import 'package:yofiz/screens/profile.dart';
import 'package:yofiz/utils/values/colors.dart';

final Color backgroundColor = Color.fromARGB(255, 254, 254, 254);

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 200);
  AnimationController _controller;

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    _controller.dispose();
    // BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent) {
    print("Pressed back");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[bottomMenu(context)],
      ),
    );
  }

  List<Widget> _widgetOptions = <Widget>[
    Stack(
      children: <Widget>[Home()],
    ),
    Stack(
      children: <Widget>[History()],
    ),
    Stack(
      children: <Widget>[ChoosePay()],
    ),
    Stack(
      children: <Widget>[Notifications()],
    ),
    Stack(
      children: <Widget>[Profile()],
    ),
  ];

  Widget bottomMenu(context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 48.0,
        items: <Widget>[
          Icon(Icons.home, size: 25, color: Colors.white),
          Icon(Icons.history, size: 25, color: Colors.white),
          Icon(Icons.payment, size: 30, color: Colors.white),
          Icon(Icons.message, size: 25, color: Colors.white),
          Icon(Icons.perm_identity, size: 25, color: Colors.white),
        ],
        color: AppColors.secondaryElement,
        buttonBackgroundColor: AppColors.secondaryElement,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Center(
        child: _widgetOptions.elementAt(_page),
      ),
    );
  }
}
