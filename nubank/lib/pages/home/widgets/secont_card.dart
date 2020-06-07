import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecontCard extends StatefulWidget {
  @override
  _SecontCardState createState() => _SecontCardState();
}

class _SecontCardState extends State<SecontCard> with AutomaticKeepAliveClientMixin {
      bool showSaldo = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Conta',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                showSaldo = !showSaldo;
                              });
                            },
                            child: SvgPicture.asset(
                              !showSaldo
                                  ? 'assets/icons/eye-off-outline.svg'
                                  : 'assets/icons/eye-outline.svg',
                              color: Colors.grey,
                              semanticsLabel: 'eye',
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Saldo disponivel',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        showSaldo ? Text.rich(
                          TextSpan(
                            text: 'R\$ 232,32',
                          ),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        )
                        :
                        Container(
                          height: 32,
                          width: 160,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.credit_card,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'Compra mais recente em MercPago no valor de R\$43,00',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey[400],
                    size: 18,
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
