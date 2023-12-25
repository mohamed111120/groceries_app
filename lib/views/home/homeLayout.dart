
import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/app_colors.dart';
import 'package:groceries_app/views/home/explor_screen/explor_screen.dart';
import 'home_screen/home_sceen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key}) : super(key: key);
  static String id = 'HomeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
   int currentIndex =0 ;
  List<Widget> homeScreens=[
    HomeScreen(),
    ExploreScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: AppColors.green,
        unselectedItemColor:  AppColors.black,
        unselectedLabelStyle: TextStyle(color: AppColors.black),
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            print(currentIndex);
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(
              Icons.manage_search_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(
              Icons.favorite_border,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              Icons.account_circle,
            ),
          ),
        ],
      ),
    );
  }
}
