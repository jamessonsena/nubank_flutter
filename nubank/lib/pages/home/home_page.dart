import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/card_app.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';
import 'package:nubank/pages/home/widgets/my_dots_app.dart';
import 'package:nubank/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;
  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                _showMenu = !_showMenu;
              },
            ),
            PageViewApp(
              top: !_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (detail){
                _yPosition += detail.delta.dy;
              },
            ),
            MyDotsApp(
              top: _screenHeigth * .70,
              currentIndex: _currentIndex,
            ),
          ],
        ));
  }
}
