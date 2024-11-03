import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/active_all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';

import 'inactive_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.model, required this.isSlected});
  final AllExpenssesItemModel model;
  final bool isSlected;
  @override
  Widget build(BuildContext context) {
    return isSlected
        ? ActiveAllExpensessItem(model: model)
        : InActiveAllExpensessItem(model: model);
  }
}
