import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/item_details.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      color: Color(0xff208bc7),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xff4db7f2),
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xff064060),
      title: 'Product royalty',
      value: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xffe2decd),
      title: 'Other',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );

   
  }
}
