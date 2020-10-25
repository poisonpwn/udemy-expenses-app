import 'package:flutter/foundation.dart';

class Transaction {
  final String title;
  final double amount;
  final DateTime date;
  final String id;

  Transaction(
      {@required this.amount,
      @required this.title,
      @required this.date,
      @required this.id});
}
