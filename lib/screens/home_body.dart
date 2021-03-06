import 'package:book_squad/components/book_container.dart';
import 'package:book_squad/components/list_title.dart';
import 'package:book_squad/components/progress_card.dart';
import 'package:book_squad/components/text_wiget1.dart';
import 'package:book_squad/constants.dart';
import 'package:book_squad/data.dart';
import 'package:book_squad/models/items.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTitle(title: "Discover Our BestSellers",),
        ItemListContainer(items: bestSellers.map((item) => Item(name: item['name'], img: item['img'])).toList(),),
        SizedBox(height: 30,),
        ProgressCard(childWidget: TextWidget1()),
        SizedBox(height: 50,),
        ListTitle(
          title: "Popular", 
          iconSize: 30,
          textStyle: subHeadingTextStyle
        ),
        ItemListContainer( items: popular.map((item) => Item(name: item['name'], img: item['img'])).toList(),),
        SizedBox(height: 30,),
      ],
        );
  }
}