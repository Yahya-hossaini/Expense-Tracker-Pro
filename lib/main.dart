import 'package:expense_tracker_pro/screens/add_new_transaction_screen.dart';
import 'package:expense_tracker_pro/screens/home_screen.dart';
import 'package:expense_tracker_pro/screens/main_screen.dart';
import 'package:expense_tracker_pro/screens/report_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/main-screen',
      routes: {
        MainScreen.routeName: (ctx) => const MainScreen(),
        HomeScreen.routName: (ctx) => const HomeScreen(),
        ReportScreen.routName: (ctx) => const ReportScreen(),
        AddNewTransactionScreen.routName: (ctx) => const AddNewTransactionScreen(),
      },
    );
  }
}

