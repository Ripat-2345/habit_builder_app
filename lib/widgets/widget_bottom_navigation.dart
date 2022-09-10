import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/screens/community/community_screen.dart';
import 'package:habit_builder_app/screens/course/course_screen.dart';
import 'package:habit_builder_app/screens/home/home_screen.dart';
import 'package:habit_builder_app/screens/onboarding/onboarding_screen.dart';

class WidgetBottomNavigation extends StatefulWidget {
  const WidgetBottomNavigation({Key? key}) : super(key: key);

  @override
  State<WidgetBottomNavigation> createState() => _WidgetBottomNavigationState();
}

class _WidgetBottomNavigationState extends State<WidgetBottomNavigation> {
  int _selectedIndex = 0;

  final List _menus = [
    [
      Image.asset(
        "assets/icons/home_active_icon.png",
        width: 50,
        height: 30,
      ),
      const HomeScreen(),
    ],
    [
      Image.asset(
        "assets/icons/courses_active_icon.png",
        width: 50,
        height: 30,
      ),
      const CourseScreen(),
    ],
    [
      Image.asset(
        "assets/icons/community_active_icon.png",
        width: 50,
        height: 30,
      ),
      const CommunityScreen(),
    ],
    [
      Image.asset(
        "assets/icons/settings_active_icon.png",
        width: 50,
        height: 30,
      ),
      Onboarding(),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _menus[_selectedIndex][1],
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: secondaryColor,
                spreadRadius: 10,
                blurRadius: 15,
              ),
            ],
          ),
          child: Icon(
            Icons.add_rounded,
            size: 36,
            color: primaryColor,
          ),
        ), //icon inside button
      ),

      //floating action button position to center
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _menus.map((menu) {
              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = _menus.indexOf(menu);
                  });
                },
                child: menu[0],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
