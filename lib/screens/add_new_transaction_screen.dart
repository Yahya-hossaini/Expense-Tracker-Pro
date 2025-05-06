import 'package:flutter/material.dart';

class AddNewTransactionScreen extends StatelessWidget {
  static const routName = '/add-new-transaction-screen';
  const AddNewTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Teacker'),
      ),
      body: Center(
        child: Text('Entry'),
      ),
    );
  }
}
