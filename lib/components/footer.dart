import 'package:book_squad/components/bottom_bar_icon.dart';
import 'package:book_squad/screens/home.dart';
import 'package:book_squad/screens/profile.dart';
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
          BottomBarIcon(
          icon: Icons.crop_square, 
          onPressed: () => {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => Home()))
              },
            ),
          BottomBarIcon(icon: Icons.favorite_border),
          BottomBarIcon(icon: Icons.bookmark_border),
          BottomBarIcon(
            icon: Icons.person_outline, 
            onPressed: () => {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => Profile()))
              },
            ),
        ]
      ),
      );
  }
}