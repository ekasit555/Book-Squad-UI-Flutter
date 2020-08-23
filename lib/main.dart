import 'package:book_squad/components/header.dart';
import 'package:book_squad/constants.dart';
import 'package:book_squad/screens/home.dart';
import 'package:book_squad/screens/landing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: bgColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
        )
      ),
      home: Scaffold(
        body: Landing() // Home()
      ),
    );
  }
}





