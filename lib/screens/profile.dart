import 'package:book_squad/components/favourite_container.dart';
import 'package:book_squad/components/layout.dart';
import 'package:book_squad/components/list_title.dart';
import 'package:book_squad/components/progress_card.dart';
import 'package:book_squad/constants.dart';
import 'package:book_squad/data.dart';
import 'package:book_squad/models/items.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(body: ProfileBody()),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTitle(title: "Profile", showIcon: false,),
        SizedBox(height: 20,),
        ProgressCard(
          childWidget: Text(
          "You know you love to listen to Designs Books  and you can spend up to 1h daily")
        ),
        SizedBox(height: 40,),
        ListTitle(title: "Your Fevourite \nBooks",  showIcon: false,),
        FevouriteListContainer(
          items: fevourite.map((item) => Item(
            name: item["name"],
            img: item["img"],
            author: item["author"],
          )).toList()
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          alignment: Alignment.centerRight,
          child: Text("see more", style: normalTextStyle,))
      ],
    );
  }
}
