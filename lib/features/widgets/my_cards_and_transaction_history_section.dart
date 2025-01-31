import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/features/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xfff1f1f1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
