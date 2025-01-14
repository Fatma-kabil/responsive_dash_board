import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_datails_model.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDatailsModel});
  final ItemDatailsModel itemDatailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
              color: itemDatailsModel.color, shape: const OvalBorder())),
      title: Text(
        itemDatailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDatailsModel.value,
        style: AppStyles.styleMeduim16.copyWith(color:const Color(0xff208CC8)),
      ),
    );
  }
}
