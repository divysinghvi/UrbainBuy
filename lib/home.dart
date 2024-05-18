import 'package:flutter/material.dart';
import 'package:urbanbuy/homebody.dart';
import 'package:urbanbuy/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Homebody(),
    );
  }
}
