import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:urbanbuy/cart/cart.dart';
import 'package:urbanbuy/homepage/components/homebody.dart';
import 'package:urbanbuy/orderpages/order.dart';
import 'package:urbanbuy/profilepage/profile_page.dart';
import 'package:urbanbuy/walletandsplash/wallet.dart'; // Import your profile page

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Homebody(),
    ShoppingCart(),
    OrderPage(),
    WalletPage(),
    ProfilePage(), // Add your profile page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: Material(
        elevation: 4,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: GNav(
              backgroundColor: Colors.white,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              gap: 4,
              tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab
              selectedIndex: _selectedIndex,
              haptic: true, // haptic feedback

              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              padding: const EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.list,
                  text: 'Order',
                ),
                GButton(
                  icon: Icons.account_balance_wallet,
                  text: 'Wallet',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
