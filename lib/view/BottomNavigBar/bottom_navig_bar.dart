import 'package:flutter/material.dart';
import 'package:hiring_task_ui/view/Dashboard/home.dart';
import 'package:hiring_task_ui/view/Dashboard/need_help.dart';
import 'package:hiring_task_ui/view/Dashboard/quick_action.dart';
import 'package:hiring_task_ui/view/Dashboard/recent_discussion.dart';

class BottomNavigBar extends StatefulWidget {
  static const String id = 'bottom_navig_bar';
  const BottomNavigBar({super.key});

  @override
  State<BottomNavigBar> createState() => _BottomNavigBarState();
}

class _BottomNavigBarState extends State<BottomNavigBar> {
  // Variable to hold the current index of the selected tab
  int _currentIndex = 0;

  // List of widgets to display for each tab
  final List<Widget> _children = [
    const Home(),
    const QuickAction(),
    const RecentDiscussion(),
    const NeedHelp()
  ];

  // Method to handle the tap on navigation bar items
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // Display the selected tab content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Current active tab index
        onTap: onTabTapped,
        selectedItemColor: Colors.black, // Method to handle taps
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/home-2.png',
              height: 30,
              //color: AppColors.primaryColor,
            ),
            icon: Image.asset(
              'assets/home-2.png',
              height: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/quick.png',
              height: 30,
              //color: AppColors.primaryColor,
            ),
            icon: Image.asset(
              'assets/quick.png',
              height: 30,
            ),
            label: 'Quick Action',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/dissc.png',
              height: 30,
              //color: AppColors.primaryColor,
            ),
            icon: Image.asset(
              'assets/dissc.png',
              height: 30,
            ),
            label: 'Recent Discussion',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/help.png',
              height: 30,
              //color: AppColors.primaryColor,
            ),
            icon: Image.asset(
              'assets/help.png',
              height: 30,
            ),
            label: 'Need Help',
          ),
        ],
      ),
    );
  }
}
