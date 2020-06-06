import 'package:flutter/material.dart';

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
        opacity: showMenu?1:0,
              child: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height * .55,
          child: Column(
            children: <Widget>[
              Image.network('https://lh3.googleusercontent.com/proxy/CMoxY0q_4Iz_WZok3KfiWl0mZas_vzu673K2TQHBH9p6GyF5jW76rqUdiDsXjBRe-z9cjvjy7XQFMDVvf8sV81CtIUKcJ2l6_4XiWYqGyOzrHizb-tD6SDVehBc8',height: 120, color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
