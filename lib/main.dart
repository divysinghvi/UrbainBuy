import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urbanbuy/cart/cart_model.dart';
import 'package:urbanbuy/loginsignup/loginpage.dart';
import 'package:urbanbuy/orderpages/trackingpage.dart';
import 'package:urbanbuy/walletandsplash/splash.dart';
import 'package:urbanbuy/walletandsplash/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Urban-buy',
        home: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
