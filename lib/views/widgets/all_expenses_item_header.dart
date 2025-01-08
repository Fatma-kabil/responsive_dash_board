import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

class AllExpensesItemnHeader extends StatelessWidget {
  const AllExpensesItemnHeader({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
              color: Color(0xffFAFAFA), shape: OvalBorder()),
          child: Center(child: SvgPicture.asset(itemModel.image)),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        )
      ],
    );
  }
}
