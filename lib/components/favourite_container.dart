
import 'package:book_squad/components/favourite_card.dart';
import 'package:book_squad/models/items.dart';
import 'package:flutter/material.dart';

class FevouriteListContainer extends StatelessWidget {

  final List<Item> items;

  const FevouriteListContainer({
    Key key, this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return FavouriteCard(
          name: items[index].name, 
          imgPath: items[index].img, 
          author: items[index].author
        );
      },
    );
  }
}