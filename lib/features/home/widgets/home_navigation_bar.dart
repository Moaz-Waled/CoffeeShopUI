import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const HomeNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: MyAppTheme.primaryColor,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedItemColor: MyAppTheme.primaryColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.home),
          activeIcon: Column(
            children: [
              Icon(IconlyBold.home),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: MyAppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 10,
                height: 5,
              ),
            ],
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.heart),
          activeIcon: Column(
            children: [
              Icon(IconlyBold.heart),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: MyAppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 10,
                height: 5,
              ),
            ],
          ),
          label: "favourite",
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.bag),
          activeIcon: Column(
            children: [
              Icon(IconlyBold.bag),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: MyAppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 10,
                height: 5,
              ),
            ],
          ),
          label: "bag",
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.notification),
          activeIcon: Column(
            children: [
              Icon(IconlyBold.notification),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: MyAppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 10,
                height: 5,
              ),
            ],
          ),
          label: "notifications",
        ),
      ],
    );
  }
}
