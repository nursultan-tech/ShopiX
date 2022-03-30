import 'package:flutter/material.dart';

import '../constant/appcolors.dart';
import 'bottom_navigation_pages/cart.dart';
import 'bottom_navigation_pages/favourite.dart';
import 'bottom_navigation_pages/homepage.dart';
import 'bottom_navigation_pages/profile.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    const Home(),
    const Favourite(),
    const Cart(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          title: const Text(
            "E-Commerce",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: AppColors.deep_orange,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'favourite'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'my cart'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile'
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              print(_currentIndex);
            });
          },
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
