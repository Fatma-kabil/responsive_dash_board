import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMeduim16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imagebackground: Colors.white.withOpacity(0.10000000149011612),
            imagecolor: Colors.white,
             iconcolor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMeduim16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(color:const Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
