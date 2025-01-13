import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indecator.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndecator()
      ],
    );
  }
}
