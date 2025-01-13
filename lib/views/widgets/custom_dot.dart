import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive ? 32 : 8,
      width: 8,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : const Color(0xFFE7E7E7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      duration: const Duration(milliseconds: 300),
    );
  }
}
