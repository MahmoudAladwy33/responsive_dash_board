import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular14(context).copyWith(
          color: const Color(0xFF064061),
        ),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
