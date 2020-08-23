import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class TextWidget1 extends StatelessWidget {
  const TextWidget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Finished your profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor.withOpacity(0.5)),
        ),
         Text('I love to listen to UI/UX Books',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: textColor.withOpacity(0.8)),
        ),
      ],
    );
  }
}