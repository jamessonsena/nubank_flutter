import 'dart:ui';

import 'package:flutter/material.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;
  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * .55,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://lh3.googleusercontent.com/proxy/CMoxY0q_4Iz_WZok3KfiWl0mZas_vzu673K2TQHBH9p6GyF5jW76rqUdiDsXjBRe-z9cjvjy7XQFMDVvf8sV81CtIUKcJ2l6_4XiWYqGyOzrHizb-tD6SDVehBc8',
                height: 120,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(text: 'Banco ', children: [
                  TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(text: 'Agência ', children: [
                  TextSpan(
                      text: '0001',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(text: 'Conta ', children: [
                  TextSpan(
                      text: '00000-0',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
               SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(icon: Icons.info_outline,text:'Me ajuda',),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
