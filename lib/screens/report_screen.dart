import 'package:flutter/material.dart';

import '../widgets/custom-appbar.dart';
import '../widgets/custom_drawer.dart';

class ReportScreen extends StatefulWidget {
  static const routName = '/report-screen';
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
        child: Text('Report'),
      ),
    );
  }
}
