import 'package:flutter/material.dart';

void main() => runApp(
      const ExpensesApp(),
    );

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses App"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Card(
              color: Colors.blue,
              child: Text('Grafico'),
            ),
          ),
          Card(child: Text('Lista de transacoes')),
        ],
      ),
    );
  }
}
