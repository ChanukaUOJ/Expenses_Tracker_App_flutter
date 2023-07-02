import 'package:expensetrackerapp/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(children: [
          Text(expense.title),
          const SizedBox(height: 10),
          Row(
            children: [
              Text("\$${expense.amount.toStringAsFixed(2)}"),
              const Spacer(),
              Row(
                children: [
                  Icon(CategoryIcon[expense.category]),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(expense.formattedDate),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
