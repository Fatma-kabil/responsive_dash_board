import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundcolor, this.textcolor, required this.text});
  final Color? backgroundcolor;
  final Color?textcolor;
  final String text;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              backgroundColor:backgroundcolor?? const Color(0xFF4DB7F2)),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.styleSemiBold18.copyWith(color:textcolor?? Colors.white),
          )),
    );
  }
}
