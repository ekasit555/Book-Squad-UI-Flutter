
import 'package:flutter/material.dart';

class BottomBarIcon extends StatelessWidget {

  final Function onPressed;
  final IconData icon;

  const BottomBarIcon({
    Key key, 
    this.onPressed, 
    @required this.icon,
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed ?? (){},
      ),
    );
  }
}