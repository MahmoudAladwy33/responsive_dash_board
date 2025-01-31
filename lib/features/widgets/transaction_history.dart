import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';
import 'package:responsive_dash_board/features/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/features/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2023',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffaaaaaa)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
