import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groce_app/screens/expolr_screen/screens/explor_screen.dart';
import 'package:groce_app/screens/home_screen/screens/home_screen.dart';
import 'package:groce_app/screens/my_account_screen/screens/my_account_screen.dart';
import 'package:groce_app/screens/my_cart/screens/my_cart_screen.dart';
import 'package:groce_app/screens/product_details_screen/screens/product_details_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExplorScreen(),
    MyCartScreen(),
    ProductDetailsScreen(),
    MyCartScreen(),
    MyAccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff53B175),
        currentIndex: activeIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop.svg',
              width: 24,
              height: 24,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/explore.svg",
              width: 24,
              height: 24,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              width: 24,
              height: 24,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/favourite.svg",
              width: 24,
              height: 24,
            ),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/account.svg",
              width: 24,
              height: 24,
            ),
            label: "Person",
          ),
        ],
      ),
      body: screens[activeIndex],
    );
  }
}
