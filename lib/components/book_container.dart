import 'package:book_squad/components/book_card.dart';
import 'package:book_squad/models/items.dart';
import 'package:flutter/material.dart';

class ItemListContainer extends StatelessWidget {

  final List<Item> items;

  const ItemListContainer({
    Key key, this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 20,),
        itemBuilder: (BuildContext context, int index) {
          return BookCard(imgPath: items[index].img);
        },
      ),
    );
  }
}