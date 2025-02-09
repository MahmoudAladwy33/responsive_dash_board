import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/widgets/income_details.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
