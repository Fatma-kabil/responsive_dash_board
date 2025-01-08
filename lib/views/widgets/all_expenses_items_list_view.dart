import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utiles/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 22',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 22',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 22',
        price: r'$20,129')
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        //  children: items.map((item) { return AllExpensesItem(itemModel: item);}).toList(),

        children: items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(isSelected: false, itemModel: item),
            ),
          );
        } else {
          return Expanded(
              child: AllExpensesItem(isSelected: false, itemModel: item));
        }
      },
    ).toList());
  }
}
