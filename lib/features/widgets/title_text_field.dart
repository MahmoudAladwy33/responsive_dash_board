import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';
import 'package:responsive_dash_board/features/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff064060),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
