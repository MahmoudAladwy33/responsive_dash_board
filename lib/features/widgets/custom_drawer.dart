import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/helpers/app_images.dart';
import 'package:responsive_dash_board/features/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'UserName',
            subtitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
