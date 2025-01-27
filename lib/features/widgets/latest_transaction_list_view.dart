import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/helpers/app_images.dart';
import 'package:responsive_dash_board/features/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madrandi20@gmail.com',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madrandi20@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madrandi20@gmail.com',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );

    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
