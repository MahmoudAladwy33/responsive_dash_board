import 'package:flutter/material.dart';
import '../../core/theme/text_style.dart';
import '../../models/all_expensses_item_model.dart';
import 'all_expensess_item_header.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.model,
  });

  final AllExpenssesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff46b1f6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            imageColor: Colors.white,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            image: model.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xfffafafa),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            model.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
