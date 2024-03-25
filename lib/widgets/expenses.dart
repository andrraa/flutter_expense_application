import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_app/widgets/expenses_list/expense_list.dart';
import 'package:flutter_expense_tracker_app/models/expense.dart';
import 'package:flutter_expense_tracker_app/widgets/new_expense.dart';

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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
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
