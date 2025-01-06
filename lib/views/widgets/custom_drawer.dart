import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utiles/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_itetms_listview.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(children: [
        UserInfoListTile(
            image: Assets.imagesAvatar3,
            tile: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com'),
        SizedBox(
          height: 8,
        ),
        DrawerItemsLisView(),
        Expanded(child: SizedBox()),
        InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Setting system', image: Assets.imagesSettings)),
        InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Logout account', image: Assets.imagesLogout)),
      ]),
    );
  }
}
