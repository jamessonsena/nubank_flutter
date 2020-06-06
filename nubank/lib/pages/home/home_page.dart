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
  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.purpleAccent,

        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                _showMenu = !_showMenu;
              },
            ),
            PageViewApp(
              top: _screenHeigth * .24,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            Positioned(
              top: _screenHeigth * .70,
              left: 0,
              right: 0,
              child: MyDotsApp(
                currentIndex: _currentIndex,
              )
            ),
          ],
        ));
  }
}
