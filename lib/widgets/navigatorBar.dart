import 'package:e_commerce_app/screens/bagpage.dart';
import 'package:e_commerce_app/screens/favoritespage.dart';
import 'package:e_commerce_app/screens/homepage.dart';
import 'package:e_commerce_app/screens/profilepage.dart';
import 'package:e_commerce_app/screens/shoppage.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({super.key});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar>
    with SingleTickerProviderStateMixin {
  int _selectedIconIndex = 4;
  var screenPages = [
    const Homepage(),
    const Shoppage(),
    const Bagpage(),
    const Favoritespage(),
    const Profilepage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1E1F28),
        selectedLabelStyle: const TextStyle(color: Color(0xFFEF3651)),
        selectedItemColor: const Color(0xFFEF3651),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIconIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIconIndex = index;
          });
        },
      ),
      body: screenPages[_selectedIconIndex],
    );
  }
}
