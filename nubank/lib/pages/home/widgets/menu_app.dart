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
          height: MediaQuery.of(context).size.height * .80,
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
                      ItemMenu(
                        icon: Icons.info_outline,
                        text: 'Me ajuda',
                      ),
                      ItemMenu(
                        icon: Icons.person_outline,
                        text: 'Perfil',
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        text: 'Configuração',
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        text: 'Configurar Cartão',
                      ),
                      ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                      ),
                      ItemMenu(
                        icon: Icons.phone_android,
                        text: 'Configuração do app',
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border:Border.all(width: 0.7,color: Colors.white54),
                        ),
                        child: RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          splashColor: Colors.purple[900],
                          elevation: 0,
                          disabledElevation: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //colocando espaco entre os Widget
                            children: <Widget>[
                              Text(
                                'Sair do app',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
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