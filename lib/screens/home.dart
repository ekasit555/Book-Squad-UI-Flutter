
import 'package:book_squad/components/layout.dart';
import 'package:book_squad/screens/home_body.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(body: HomeBody()),
    );
  }
}
