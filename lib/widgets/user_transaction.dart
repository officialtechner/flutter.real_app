import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_app/widgets/new_transaction.dart';
import 'package:real_app/widgets/transaction.dart';

import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction("1", "New Shoes1", 24.20, DateTime.now()),
    Transaction("2", "Weekly Gold", 26.20, DateTime.now()),
    Transaction("12", "222Weekly Gold", 126.20, DateTime.now()),
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        DateTime.now().toString(), txtitle, txamount, DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
