import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/all_expensess_header.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
        ],
      ),
    );
  }
}
