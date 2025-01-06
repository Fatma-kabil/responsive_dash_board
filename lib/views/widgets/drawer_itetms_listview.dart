import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utiles/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemsLisView extends StatefulWidget {
  const DrawerItemsLisView({
    super.key,
  });

  @override
  State<DrawerItemsLisView> createState() => _DrawerItemsLisViewState();
}

class _DrawerItemsLisViewState extends State<DrawerItemsLisView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModel: items[index], isActive: activeIndex==index),
          ),
        );
      },
    );
  }
}
