import 'dart:ui';

import 'package:expense_tracker_pro/widgets/custom-appbar.dart';
import 'package:expense_tracker_pro/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatefulWidget {
  static const routName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> transaction = [
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
    {
      'icon': Icons.fastfood,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
  ];

  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
                            ),
                            Center(
                              child: Text(
                                '\$1500',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w500, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Remaining',
                              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
                            ),
                            Center(
                              child: Text(
                                '\$600',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w500, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text('Recent Transaction:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                Divider(
                  thickness: 2,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: transaction.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[600],
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 2),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(transaction[index]['icon']),
                                  Column(
                                    children: [
                                      Text(transaction[index]['title']),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text('\$${transaction[index]['amount']}'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    'Date: ${intl.DateFormat('MM/dd/yyyy').format(transaction[index]['date'])}'),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
