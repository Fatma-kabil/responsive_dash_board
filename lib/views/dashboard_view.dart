import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/size_config.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayout(
          mobilelayout: (context) => const DashboardMobileLayout(),
          tabletlayout: (context) => const DashboardTabletLayout(),
          desktoplayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
