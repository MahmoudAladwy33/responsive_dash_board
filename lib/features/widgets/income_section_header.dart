
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'This Month',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
