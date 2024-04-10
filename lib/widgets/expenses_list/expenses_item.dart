import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // symmetric可分別設定水平和垂直方向的padding
        padding: const EdgeInsets.symmetric(
          horizontal: 20, // 左右padding
          vertical: 16, // 上下padding
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(), // Spacer: 將元件推到最右邊，類似flex: 1
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate), // 使用getter不需要括號
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
