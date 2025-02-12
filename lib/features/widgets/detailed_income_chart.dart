import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/text_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChart();
}

class _DetailedIncomeChart extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: false,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          title: activeIndex == 0 ? 'Design service' : '40%',
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xff208bc7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xff4db7f2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          title: activeIndex == 2 ? 'Product royalty' : '20%',
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xffe2decd),
        ),
      ],
    );
  }
}
