
import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: DefaultLightColor.primaryColor,
      unselectedItemColor: DefaultLightColor.secondaryTextColor,
      currentIndex: 2,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "home",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Shop",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Bag",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Favorite",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",

        ),
      ],

    );
  }
}
