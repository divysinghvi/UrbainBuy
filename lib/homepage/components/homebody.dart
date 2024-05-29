import 'package:flutter/material.dart';
import 'package:urbanbuy/homepage/components/bottom_section.dart';
import 'package:urbanbuy/homepage/components/carsoule.dart';
import 'package:urbanbuy/homepage/components/custumappbar.dart';
class Homebody extends StatefulWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const UpperSection(),
                    const SizedBox(height: 15),
                    const Sliderx(),
                    const SizedBox(height: 20),
                    const BottomSection()
                    // Use BottomSection here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
