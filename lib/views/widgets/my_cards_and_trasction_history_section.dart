import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/My_cards_section.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/transation_history.dart';

class MyCardsAndTrasctionHistorySection extends StatelessWidget {
  const MyCardsAndTrasctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransationHistory()
      ],
    ));
  }
}
