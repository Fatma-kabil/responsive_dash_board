import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              elevation: 0,
              leading: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )
          : null,
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayout(
          mobilelayout: (context) => const DashboardMobileLayout(),
          tabletlayout: (context) => const DashboardTabletLayout(),
          desktoplayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
