import 'package:book_squad/components/bottom_bar_icon.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomBarIcon(icon: Icons.crop_square),
          BottomBarIcon(icon: Icons.favorite_border),
          BottomBarIcon(icon: Icons.bookmark_border),
          BottomBarIcon(icon: Icons.person_outline),
      ]
        ),
    );
  }
}