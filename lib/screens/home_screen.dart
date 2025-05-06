import 'package:expense_tracker_pro/widgets/custom-appbar.dart';
import 'package:expense_tracker_pro/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(isDarkMode: isDarkMode, toggleTheme: toggleTheme, ),
      body: Center(
        child: Image.asset('assets/images/coin.png'),
      ),
    );
  }
}
