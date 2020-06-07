import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.grey,
            semanticsLabel: 'eye',
          ),
          Text(
            'Nubank Rewards',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Acule pontos que nunca expiram e troque por passagens aéreas ou serviços personalizados',
            style: TextStyle(
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.7, color: Colors.purple[800])),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(5),
              ),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
