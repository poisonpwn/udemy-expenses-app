import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import './transaction.dart';
import './addTransactionCard.dart';
import './transactionList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  final transactionList = <Transaction>[
    Transaction(
      amount: 400.0,
      description: 'Somthing',
      date: DateTime.now(),
    ),
  ];
  void addTransactionFunc(String title, String amount) {
    print(title);
    print(amount);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Some_App'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart'),
              ),
            ),
            AddTransactionCard(
              addTransactionFunc,
              fieldTitle1: 'Title',
              fieldTitle2: 'Amount',
            ),
            TransactionList(transactionList)
          ],
        ),
      ),
    );
  }
}
