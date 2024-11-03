import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground ?? Colors.white,
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4eb7f2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            color: imageColor == null ? const Color(0xFF064061) : Colors.white,
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
