import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_datails_model.dart';
import 'package:responsive_dash_board/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDatailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    ItemDatailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    ItemDatailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    ItemDatailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDatailsModel: items[index]);
      },
    );
  }
}
