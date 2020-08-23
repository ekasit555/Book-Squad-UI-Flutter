import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {

  final String title;
  final TextStyle textStyle;
  final double iconSize;

  const ListTitle({
    Key key, 
    @required this.title, 
    this.textStyle = const TextStyle(
      color: primaryColor, 
      fontSize: 35, 
      fontWeight: FontWeight.bold, 
      height: 1
      ), 
    this.iconSize = 40
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
            child: Container(
            child: Text(
              title, 
              textAlign: TextAlign.start,
              style: textStyle
            ),
          ),
        ),
        Expanded(
            child: Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.arrow_forward_ios,
              color: textColor,  
              size: iconSize,
            ),
          ),
        )
      ],
    );
  }
}