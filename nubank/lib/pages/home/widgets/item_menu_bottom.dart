import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final  IconData icon;
  final String text;

  const ItemMenuBottom({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Container(
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,//colocando espaço entre os itens
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text(text, style: TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}
