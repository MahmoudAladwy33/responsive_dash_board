import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/drawer_item.dart';

import '../../core/helpers/app_images.dart';
import '../../models/drawer_item_model.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transctions', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModel: items[index]),
          );
        });
  }
}
