import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: "Hello!",
                  style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Micheal",
                     style: normalTextStyle.copyWith(fontSize: 25),
                    ),
                  ]
                )
              )
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: textLightColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: 30.0,
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}