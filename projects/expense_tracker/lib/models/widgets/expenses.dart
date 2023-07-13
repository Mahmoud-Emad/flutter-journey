import 'package:flutter/material.dart';

import '../new_expense.dart';
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

  void _addExpense(Expense expense) {
    setState(() {
      _registerdExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registerdExpenses.indexOf(expense);

    setState(() {
      _registerdExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("Expense deleted."),
        action: SnackBarAction(
          onPressed: () {
            setState(() {
              _registerdExpenses.insert(expenseIndex, expense);
            });
          },
          label: "Undo",
        ),
      ),
    );
  }

  void _openAddExpenseOvelay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return NewExpense(
          onAddExpense: _addExpense,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("No expenses found, Try to add a new one."),
    );

    if (_registerdExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registerdExpenses,
        onRemovedExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense Tracker"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddExpenseOvelay,
          ) // Add button here
        ],
      ),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
