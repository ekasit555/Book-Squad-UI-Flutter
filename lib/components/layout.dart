
import 'package:book_squad/components/footer.dart';
import 'package:book_squad/components/header.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget body;
  
  const Layout({
    Key key, 
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Header(),
          Flexible(child: body),
          Footer()
        ],
      ),
    );
  }
}