import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffaaaaaa),
        ),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
