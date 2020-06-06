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
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Stack(
        children: <Widget>[
        MyAppBar(showMenu: _showMenu,
        onTap: (){
          _showMenu = !_showMenu;
        },)
      ],)
    );
  }
}