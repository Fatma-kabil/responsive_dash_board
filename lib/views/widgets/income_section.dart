import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'Income',
              style: AppStyles.styleSemiBold20,
            ),
            Expanded(child: SizedBox()),
            RangeOptions()
          ],
        ),
        Expanded(
          child: Row(
            children: [Expanded(child: IncomeChart())],
          ),
        )
      ],
    ));
  }
}
