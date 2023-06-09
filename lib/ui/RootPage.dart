// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:final_app/ui/screens/cart_page.dart';
import 'package:final_app/ui/screens/favourite_page.dart';
import 'package:final_app/ui/screens/home_page.dart';
import 'package:final_app/ui/screens/wallet.dart';
import 'package:final_app/ui/screens/profile_page.dart';
import 'package:page_transition/page_transition.dart';

import '../models/Food.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Food> favorites = [];
  List<Food> myCart = [];
  int _bottomNavIndex = 0;

  //List of pages
  List<Widget> _widgetOptions() {
    return [
      const HomePage(),
      FavoritePage(
        favoritedFood: favorites,
      ),
      CartPage(
        addedToCartFoods: myCart,
      ),
      const WalletPage(),
    ];
  }

  List<Widget> iconList = [
    Icon(
      Icons.home,
      color: Colors.white70,
    ),
    Icon(
      Icons.favorite,
      color: Colors.white70,
    ),
    Icon(
      Icons.shopping_cart,
      color: Colors.white70,
    ),
    Icon(
      Icons.wallet,
      color: Colors.white70,
    ),
    // Icon(Icons.person),
  ];

  //List of the pages titles

  // List<String>titeList=[
  //   'Home',
  //   'Favorites',
  //   'Cart',
  //   'Profile',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: ProfilePage(),
                          type: PageTransitionType.bottomToTop));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                )),
            Icon(
              Icons.notifications,
              color: Colors.white70,
              size: 30.0,
            )
          ],
        ),
        backgroundColor: Color(0xff6D2113),
        //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: Colors.transparent,
        color: Color(0xff6D2113),
        items: iconList,
        index: _bottomNavIndex,
        backgroundColor: Color(0xff6D2113).withOpacity(0.1),
        // backgroundColor: AppColors.bgcolor40percent,
        // buttonBackgroundColor: Colors.transparent,

        height: 60,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
            final List<Food> favoritedFoods = Food.getFavoritedFoods();
            final List<Food> addedToCart = Food.addedToCartFoods();

            favorites = favoritedFoods;
            myCart = addedToCart.toSet().toList();
          });
        },
      ),
    );
  }
}
