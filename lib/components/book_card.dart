import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String imgPath;
  
  const BookCard({
    Key key, 
    @required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Image.asset(imgPath, fit: BoxFit.fitWidth,)
    );
  }
}