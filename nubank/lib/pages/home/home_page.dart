import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu_bottom.dart';
import 'package:nubank/pages/home/widgets/menu_app.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    if (_yPosition == null) {
      _yPosition = _screenHeigth * .25;
    }
    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                  _yPosition =
                      _showMenu ? _screenHeigth * .85 : _screenHeigth * .25;
                });
              },
            ),
            MenuApp(
              top: _screenHeigth * .15,
              showMenu: _showMenu,
            ),
            PageViewApp(
              top: _yPosition,
              showMenu: _showMenu,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (detail) {
                double positionBouttomLimit = _screenHeigth * .85;
                double positionTopLimit = _screenHeigth * .25;
                double midlePosition = positionBouttomLimit - positionTopLimit;
                midlePosition = midlePosition / 2;
                setState(() {
                  _yPosition += detail.delta.dy;
                  _yPosition = _yPosition <= positionTopLimit
                      ? positionTopLimit
                      : _yPosition;
                  _yPosition = _yPosition >= positionBouttomLimit
                      ? positionBouttomLimit
                      : _yPosition;

                  if (_yPosition != positionBouttomLimit &&
                      detail.delta.dy > 0) {
                    _yPosition = _yPosition > positionTopLimit + midlePosition
                        ? positionBouttomLimit
                        : _yPosition;
                  }

                  if (_yPosition != positionTopLimit && detail.delta.dy < 0) {
                    _yPosition =
                        _yPosition < positionBouttomLimit - midlePosition
                            ? positionTopLimit
                            : _yPosition;
                  }

                  if (_yPosition >= positionBouttomLimit) {
                    //Menu top está ativo ?
                    _showMenu = true;
                  } else {
                    _showMenu = false;
                  }
                });
              },
            ),
            MyDotsApp(
              top: _screenHeigth * .70,
              currentIndex: _currentIndex,
              showMenu: _showMenu,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              bottom: 0,
              height: _screenHeigth * .13,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: !_showMenu ? 1 : 0,
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(), //Efeito de elastico
                    scrollDirection: Axis
                        .horizontal, // muito top esse elemento, trocando a direção da listview
                    children: <Widget>[
                      ItemMenuBottom(
                        icon: Icons.person_add,
                        text: 'Indicar amigos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.phone_android,
                        text: 'Recarga de celular',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chat,
                        text: 'Cobrar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.monetization_on,
                        text: 'Empréstimos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.move_to_inbox,
                        text: 'Depositar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.mobile_screen_share,
                        text: 'Transferir',
                      ),
                      ItemMenuBottom(
                        icon: Icons.format_align_center,
                        text: 'Ajustar Limite',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chrome_reader_mode,
                        text: 'Pagar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.lock_open,
                        text: 'Bloquear Cartão',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
