import 'package:flutter/material.dart';

class AddNewTransactionScreen extends StatefulWidget {
  static const routName = '/add-new-transaction-screen';
  const AddNewTransactionScreen({super.key});

  @override
  State<AddNewTransactionScreen> createState() => _AddNewTransactionScreenState();
}

class _AddNewTransactionScreenState extends State<AddNewTransactionScreen> {
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
