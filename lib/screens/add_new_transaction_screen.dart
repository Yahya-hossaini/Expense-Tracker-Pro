import 'package:flutter/material.dart';

import '../widgets/custom-appbar.dart';
import '../widgets/custom_drawer.dart';

class AddNewTransactionScreen extends StatefulWidget {
  static const routName = '/add-new-transaction-screen';
  const AddNewTransactionScreen({super.key});

  @override
  State<AddNewTransactionScreen> createState() => _AddNewTransactionScreenState();
}

class _AddNewTransactionScreenState extends State<AddNewTransactionScreen> {
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
        child: Text('Entry'),
      ),
    );
  }
}
