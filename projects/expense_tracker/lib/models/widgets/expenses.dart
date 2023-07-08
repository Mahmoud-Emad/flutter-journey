import 'package:flutter/material.dart';

import 'expenses_list/expenses_list.dart';
import '../expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerdExpenses = [
    Expense(
      amount: 19.52,
      title: "Flutter Course",
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      amount: 15.36,
      title: "Cinema",
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense Tracker"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ) // Add button here
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ExpensesList(expenses: _registerdExpenses),
          )
        ],
      ),
    );
  }
}
