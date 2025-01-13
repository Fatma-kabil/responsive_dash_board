import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CustomDotsIndicator(
              isActive: index == currentIndex,
            ),
          );
        },
      ),
    );
  }
}
