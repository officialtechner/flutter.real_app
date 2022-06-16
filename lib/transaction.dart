import 'package:flutter/material.dart';

class Transaction {
  late String id;
  late String title;
  late double amount;
  late DateTime date;

  Transaction(id, title, amount, date) {
    this.id = id;
    this.title = title;
    this.amount = amount;
    this.date = date;
  }
}
