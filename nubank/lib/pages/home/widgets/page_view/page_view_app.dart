import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/cards/card_app.dart';
import 'package:nubank/pages/home/widgets/cards/first_card.dart';
import 'package:nubank/pages/home/widgets/cards/secont_card.dart';
import 'package:nubank/pages/home/widgets/cards/thirdCard.dart';


class PageViewApp extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;
  const PageViewApp(
      {Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween; 
  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 150);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceInOut,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: widget.top,
            curve: Curves.easeOut,
            height: MediaQuery.of(context).size.height * .45,
            left: value,
            right: value * -1,
            child: GestureDetector(
              onPanUpdate:
                  widget.onPanUpdate, //evento de clicar no item e mover
              child: PageView(
                onPageChanged: widget.onChanged,
                physics: widget.showMenu
                    ? NeverScrollableScrollPhysics()
                    : BouncingScrollPhysics(),
                children: <Widget>[
                  CardApp(
                    child: FirstCard(),
                  ),
                  CardApp(
                    child: SecontCard(),
                  ),
                  CardApp(
                    child: ThirdCard(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
