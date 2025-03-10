import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/helpers/app_images.dart';
import 'package:responsive_dash_board/features/widgets/drawer_list_view.dart';
import 'package:responsive_dash_board/features/widgets/inactive_drawer_item.dart';
import 'package:responsive_dash_board/features/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

import '../../models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                title: 'UserName',
                subTitle: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
