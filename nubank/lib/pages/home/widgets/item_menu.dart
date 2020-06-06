import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.white54),
          top: BorderSide(width: .5, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,//colocando espaco entre os Widget
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Icon(Icons.chevron_right, size:16)
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
