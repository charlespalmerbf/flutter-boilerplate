import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.black,
          color: Colors.black,
          tabActiveBorder: Border.all(color: Colors.black),
          gap: 8,
          tabs: const [
            GButton(icon: Icons.home, text: 'Shop', key: Key('shop_button')),
            GButton(icon: Icons.shopping_bag, text: 'Cart', key: Key('cart_button'))
          ]),
    );
  }
}
