import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/size_config.dart';
import 'package:responsive_dash_board/features/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/features/widgets/income_chart.dart';

import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    log('Width: $width');
    return width >= SizeConfig.desktop && width <= 1480
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
