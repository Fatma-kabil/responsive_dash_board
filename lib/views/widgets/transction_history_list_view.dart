import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transation_model.dart';
import 'package:responsive_dash_board/views/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const items = [
    TransationModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022 ',
        isWithdrawer: true),
    TransationModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM ',
        isWithdrawer: false),
    TransationModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM ',
        isWithdrawer: false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransctionItem(transationModel: items[index]);
      },
    );
  }
}
