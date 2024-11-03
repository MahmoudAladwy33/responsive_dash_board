import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';

import '../../core/helpers/app_images.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  int isSelected = 0;
  final items = const [
    AllExpenssesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20.129',
    ),
    AllExpenssesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20.129',
    ),
    AllExpenssesItemModel(
      image: Assets.imagesExpenses,
      title: 'Income',
      date: 'April 2022',
      price: r'$20.129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = index;
              });
            },
            child: index == 1
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensessItem(
                        model: item, isSlected: isSelected == index),
                  )
                : Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = index;
                        });
                      },
                      child: AllExpensessItem(
                        model: item,
                        isSlected: isSelected == index,
                      ),
                    ),
                  ),
          ),
        );
      }).toList(),
    );
  }
}
