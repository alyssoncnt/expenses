import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const ExpensesApp(),
    );

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tenis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses App"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                  child: Text(tr.title),
                );
              }).toList(),
            ),
          ]),
    );
  }
}
