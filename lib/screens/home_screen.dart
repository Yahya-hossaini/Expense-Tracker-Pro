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
      'icon': Icons.school,
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
      'icon': Icons.shopping_cart,
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
      'icon': Icons.travel_explore,
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
      'icon': Icons.school,
      'title': 'Title',
      'amount': 99,
      'date': DateTime.now(),
    },
  ];

  Color getIconColor(IconData icon) {
    if (icon == Icons.school) {
      return Colors.blue;
    } else if (icon == Icons.fastfood) {
      return Colors.red;
    } else if (icon == Icons.shopping_cart) {
      return Colors.green;
    } else if (icon == Icons.travel_explore) {
      return Colors.orange;
    }
    return Colors.black;
  }

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
        builder: (context, constrains) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 35,
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: size.width * 0.06,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: TotalRemainingCard(title: 'Total', amount: 1500,),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.06,
                                  ),
                                  const Expanded(
                                    child: TotalRemainingCard(title: 'Remaining', amount: 600,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  'Recent Transaction:',
                                  style:
                                  TextStyle(fontSize: size.height * 0.018, fontWeight: FontWeight.w500),
                                ),
                              ),
                              Divider(
                                thickness: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 65,
                  child: Container(
                    color: Colors.blueAccent,
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
                          margin: EdgeInsets.symmetric(
                              vertical: constrains.maxHeight * 0.005,
                              horizontal: 2),
                          padding: EdgeInsets.all(constrains.maxHeight * 0.015),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      transaction[index]['icon'],
                                      color: getIconColor(
                                          transaction[index]['icon']),
                                      size: constrains.maxHeight * 0.05,
                                    ),
                                    SizedBox(width: constrains.maxHeight * 0.02),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          transaction[index]['title'],
                                          style: TextStyle(
                                              fontSize: size.height * 0.021,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '\$${transaction[index]['amount']}',
                                          style: TextStyle(
                                              fontSize: size.height * 0.02,
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.w500),
                                        ),
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
                                    'Date: ${intl.DateFormat('MM/dd/yyyy').format(transaction[index]['date'])}',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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

class TotalRemainingCard extends StatelessWidget {
  final String title;
  final int amount;

  const TotalRemainingCard({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(size.height * 0.01),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.015,
                color: Colors.green),
          ),
          Center(
            child: Text(
              '\$$amount',
              style: TextStyle(
                  fontSize: size.height * 0.03,
                  fontWeight: FontWeight.w500,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
