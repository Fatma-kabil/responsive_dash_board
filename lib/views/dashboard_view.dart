import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0XFFF7F9FA),
      body: AdaptiveLayout(
          mobilelayout: (context) => const SizedBox(),
          tabletlayout: (context) => const SizedBox(),
          desktoplayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
