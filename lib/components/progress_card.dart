
import 'package:book_squad/components/circle_progress_bar.dart';
import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final Widget childWidget;

  const ProgressCard({
    Key key, 
    @required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0,5),
            blurRadius: 10,
            color: activeShadowColor,
          )
        ]),
      height: 100,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          children: [
            CircleProgressBar(),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: childWidget,
              ),
            )
          ],
        ),
      )
    );
  }
}