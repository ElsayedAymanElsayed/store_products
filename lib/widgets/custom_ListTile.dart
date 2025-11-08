import 'package:flutter/material.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    super.key,
    required this.text,
    required this.price,
    this.color,
    this.fontWeight,
    this.size,
  });
  final String text;
  final String price;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CustomText(
          text: text,
          color: color,
          fontWeight: fontWeight,
          size: size,
        ),
        trailing: CustomText(
          text: price,
          color: color,
          fontWeight: fontWeight,
          size: size,
        ),
      ),
    );
  }
}
