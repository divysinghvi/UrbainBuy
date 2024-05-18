import 'package:flutter/material.dart';
import 'package:urbanbuy/carsoule.dart';
import 'package:urbanbuy/custumappbar.dart';
import 'package:urbanbuy/homebottom.dart';
import 'package:urbanbuy/navbar.dart';
import 'package:urbanbuy/search.dart';

class Homebody extends StatefulWidget {
  const Homebody({Key? key});

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    UPPERSECTION(),
                    SizedBox(height: 20),
                    SearchSection(),
                    SizedBox(height: 15),
                    Sliderx(),
                    SizedBox(height: 20),
                    BottomSection(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey, // Example color for NavBarx
            height: 50, // Adjust the height according to your design
            child: const NavBarx(), // Place NavBarx here
          ),
        ],
      ),
    );
  }
}
