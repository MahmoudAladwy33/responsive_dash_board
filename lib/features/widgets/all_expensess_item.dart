import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/active_all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';

import 'inactive_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(model: itemModel);
  }
}
