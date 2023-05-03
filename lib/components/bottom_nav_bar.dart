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
          activeColor: Colors.white,
          color: Colors.grey[300],
          tabActiveBorder: Border.all(color: Colors.white),
          gap: 8,
          tabs: const [
            GButton(icon: Icons.lock, text: 'Login'),
            GButton(icon: Icons.home, text: 'Shop'),
            GButton(icon: Icons.shopping_bag, text: 'Cart')
          ]),
    );
  }
}
