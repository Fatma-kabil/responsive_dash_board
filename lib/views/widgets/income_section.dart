import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/income_section_body.dart';
import 'package:responsive_dash_board/views/widgets/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundContainer(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'Income',
              style: AppStyles.styleSemiBold20(context),
            ),
           const Expanded(child: SizedBox()),
           const RangeOptions()
          ],
        ),
       const IncomeSectionBody()
      ],
    ));
  }
}
