import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/helpers/app_images.dart';
import 'package:responsive_dash_board/features/widgets/drawer_list_view.dart';
import 'package:responsive_dash_board/features/widgets/inactive_drawer_item.dart';
import 'package:responsive_dash_board/features/widgets/user_info_list_tile.dart';

import '../../models/drawer_item_model.dart';

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
          SizedBox(
            height: 8,
          ),
          DrawerListView(),
          Expanded(
            child: SizedBox(),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Setting system', image: Assets.imagesSettings),
          ),
          InActiveDrawerItem(
            drawerItemModel:
                DrawerItemModel(title: 'Logout', image: Assets.imagesLogout),
          ),
          SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
