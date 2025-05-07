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
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Text('Home'),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total'),
                          Center(child: Text('\$1500')),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Remaining'),
                          Center(child: Text('\$600')),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text('Recent Transaction:'),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: transaction.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.lightBlueAccent,
                      width: double.infinity,
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(transaction[index]['icon']),
                              Column(
                                children: [
                                  Text(transaction[index]['title']),
                                  Text('${transaction[index]['amount']}'),
                                ],
                              ),
                            ],
                          ),
                          Text('${transaction[index]['date']}'),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
