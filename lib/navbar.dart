import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class NavBarx extends StatefulWidget {
  const NavBarx({super.key});

  @override
  NavBarxState createState() => NavBarxState();
}

class NavBarxState extends State<NavBarx> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Center(
        child: Text('Home Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    const Center(
        child: Text('Cart Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    const Center(
        child: Text('Order Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    const Center(
        child: Text('Wallet Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    const Center(
        child: Text('Profile Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set background color to white
      child: Column(
        children: [
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Container(
            color: Colors.white, // Set background color to white
            child: ConvexAppBar(
              backgroundColor: Colors.white, // Set background color to white
              style: TabStyle.react,
              activeColor:
                  Colors.black, // Set icon color for active tab to black
              color: Colors.grey, // Set icon color for inactive tabs to grey
              items: const [
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.shopping_cart, title: 'Cart'),
                TabItem(icon: Icons.list, title: 'Order'),
                TabItem(icon: Icons.account_balance_wallet, title: 'Wallet'),
                TabItem(icon: Icons.person, title: 'Profile'),
              ],
              initialActiveIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
