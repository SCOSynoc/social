import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social/screens/dashboard/AddPostScreen.dart';
import 'package:social/screens/dashboard/FeedsScreen.dart';
import 'package:social/screens/dashboard/FindPeopleScreen.dart';
import 'package:social/utils/colors.dart';


import 'ProfileScreen.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {

  int currentIndex = 0;

  List pages = [
    const FeedsScreen(),
    const FindPeopleScreen(),
     AddPostScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      bottomNavigationBar:
      BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: AppColors.appSecondaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: AppColors.fillColor,
          items: [
            BottomNavigationBarItem(
                backgroundColor: AppColors.appSecondaryColor,
                icon: Icon(Icons.home, size: 30),
                label:"Home"
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.appSecondaryColor,
                icon: Icon(Icons.search ,size: 30),
                label:"search"
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.appSecondaryColor,
                icon: Icon(Icons.add_box),
                label:"Add"
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.appSecondaryColor,
                icon: Icon(Icons.person, size: 30),
                label:"profile"
            )
          ]
      ),
      body: pages[currentIndex],
    );
  }
}