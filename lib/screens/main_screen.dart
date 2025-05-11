import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expense_tracker_pro/navbar_key.dart';
import 'package:expense_tracker_pro/screens/report_screen.dart';
import 'package:flutter/material.dart';

import 'add_new_transaction_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main-screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List _screens = [
    const HomeScreen(),
    const ReportScreen(),
    const AddNewTransactionScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0XFFEDEDED),
        color: Colors.black87,
        buttonBackgroundColor: Colors.white.withOpacity(1),

        height: 60,
        key: NavbarKey.getKey(),
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        animationCurve: Curves.fastEaseInToSlowEaseOut,
        animationDuration: const Duration(milliseconds: 450),
        items: [
          Icon(Icons.home, size: 30, color: _selectedIndex == 0 ? Colors.black : Colors.white),
          Icon(Icons.report, size: 30,  color: _selectedIndex == 1 ? Colors.black : Colors.white),
          Icon(Icons.add_circle_outline, size: 30,  color: _selectedIndex == 2 ? Colors.black : Colors.white),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
