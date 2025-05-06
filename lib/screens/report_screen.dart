import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  static const routName = '/report-screen';
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Teacker'),
      ),
      body: Center(
        child: Text('Report'),
      ),
    );
  }
}
