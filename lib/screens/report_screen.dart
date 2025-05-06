import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  static const routName = '/report-screen';
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
