import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';

class TransationHistoryHeader extends StatelessWidget {
  const TransationHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transation History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See all',
          style:
              AppStyles.styleMeduim16.copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
