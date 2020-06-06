import 'package:flutter/material.dart';
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
   if(_yPosition == null){
    _yPosition = _screenHeigth *.24;

   }
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                });
              },
            ),
            PageViewApp(
              top: _yPosition,//!_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (detail) {
                double positionBouttomLimit = _screenHeigth * .75;
                double positionTopLimit = _screenHeigth * .24;

                setState(() {
                  
                  _yPosition += detail.delta.dy;
                  _yPosition = _yPosition < positionTopLimit ? positionTopLimit :_yPosition; 
                  _yPosition = _yPosition > positionBouttomLimit ? positionBouttomLimit :_yPosition; 

                });
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
