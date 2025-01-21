import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desktoplayout});
  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            //  print('con${constraints.maxWidth + 32}');
            if (constraints.maxWidth + 32 < 800) {
              return mobilelayout(context);
            } else if (constraints.maxWidth + 32 < 1300) {
              return tabletlayout(context);
            } else {
              return desktoplayout(context);
            }
          },
        ));
  }
}
