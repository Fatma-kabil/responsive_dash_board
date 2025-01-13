import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transation_model.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transationModel});
  final TransationModel transationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transationModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(transationModel.date, style: AppStyles.styleRegular16),
        trailing: Text(transationModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
                color:
                    transationModel.isWithdrawer ?const Color(0xFFF3735E) : const Color(0xFF7DD97B))),
      ),
    );
  }
}
