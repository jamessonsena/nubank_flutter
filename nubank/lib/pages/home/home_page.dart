import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Stack(
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                _showMenu = !_showMenu;
              },
            ),
            Positioned(
              top: _screenHeigth * .24,
              height: _screenHeigth * .45,
              left: 0,
              right: 0,
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Container(color: Colors.yellow),
                  Container(color: Colors.blue),
                ],
              ),
            ),
          ],
        ));
  }
}
