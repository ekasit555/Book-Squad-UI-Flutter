
import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/landing_bg.png'),
          fit: BoxFit.fitWidth
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80,),
          Text(
            'BOOKSQUAD', 
            style: headingTextStyle
          ),
          SizedBox(height: 20,),
          Text(
            'The new experience of book\nreading for readers', 
            style: normalTextStyle,
            textAlign: TextAlign.center,
          ),
          Expanded(child: Container(),),
          Container(
            margin: EdgeInsets.all(50),
            child: RaisedButton(
              color: secondaryColor,
              textColor: Colors.white,
              onPressed: () => {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Get Started', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}