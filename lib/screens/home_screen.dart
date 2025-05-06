import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Teacker'),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
