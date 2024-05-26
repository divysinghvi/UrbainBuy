import 'package:flutter/material.dart';
import 'package:urbanbuy/homepage/components/Item_tile.dart';
import 'package:urbanbuy/homepage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
      // Other theme properties
    ),

    debugShowCheckedModeBanner: false,
      title: 'Urban-buy',
      home: SafeArea(
        child: HomePage(),

      ),
    );
  }
}
