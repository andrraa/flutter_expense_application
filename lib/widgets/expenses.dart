import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_app/widgets/expenses_list/expense_list.dart';
import 'package:flutter_expense_tracker_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Gofood',
      amount: 10000,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Gojek',
      amount: 20000,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Gofood',
      amount: 30000,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}
