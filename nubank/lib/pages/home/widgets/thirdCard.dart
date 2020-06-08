import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdCard extends StatefulWidget {
  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.grey,
            semanticsLabel: 'eye',
          ),
          Column(
            children: <Widget>[
              Text(
                'Nubank Rewards',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Acule pontos que nunca expiram e troque por passagens aéreas ou serviços personalizados',
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.7,
                color: Colors.purple[800],
              ),
            ),
            child: RaisedButton(
              onHighlightChanged: (pressed) {
                setState(() {
                  _buttonPressed = pressed;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
              textColor: !_buttonPressed ? Colors.purple[800] : Colors.white,
              highlightColor: Colors.purple[800],
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
