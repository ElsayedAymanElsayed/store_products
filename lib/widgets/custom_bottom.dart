import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.text, this.size, this.onTap});
  final String text;
  final double? size;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
        height: 40,
        decoration: BoxDecoration(
          color: kprimryColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: CustomText(text: text, size: size),
        ),
      ),
    );
  }
}
