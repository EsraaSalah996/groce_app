import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groce_app/screens/expolr_screen/screens/explor_screen.dart';
import 'package:groce_app/screens/favourite_screen/screen/favourite_screen.dart';
import 'package:groce_app/screens/home_screen/screens/home_screen.dart';
import 'package:groce_app/screens/my_account_screen/screens/my_account_screen.dart';
import 'package:groce_app/screens/my_cart/screens/my_cart_screen.dart';

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
    FavouriteScreen(),
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
              colorFilter: activeIndex == 0
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/explore.svg",
              width: 24,
              height: 24,
              colorFilter: activeIndex == 1
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              width: 24,
              height: 24,
              colorFilter: activeIndex == 2
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/favourite.svg",
              width: 24,
              height: 24,
              colorFilter: activeIndex == 3
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/account.svg",
              width: 24,
              height: 24,
              colorFilter: activeIndex == 4
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Person",
          ),
        ],
      ),
      body: screens[activeIndex],
    );
  }
}
