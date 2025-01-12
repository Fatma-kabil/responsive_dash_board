import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    hint: 'Type Customer name', title: 'Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  hint: 'Type Customer Email', title: 'Customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    hint: 'Type Customer name', title: 'Item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(hint: 'USD', title: 'Item mount'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backgroundcolor: Colors.transparent,
              text: 'Add more details',
              textcolor: Color(0xFF4DB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
