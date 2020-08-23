
import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {

  final String name;
  final String imgPath;
  final String author;

  const FavouriteCard({
    Key key, this.name, this.imgPath, this.author, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0,5),
            blurRadius: 10,
            color: activeShadowColor,
          )
        ]),
      height: 130,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(imgPath)) 
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                    ),
                    SizedBox(height: 10,),
                    Text("by $author",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}