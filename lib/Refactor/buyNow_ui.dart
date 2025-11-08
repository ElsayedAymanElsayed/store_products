import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/widgets/custom_ListTile.dart';
import 'package:store_products/widgets/custom_Text.dart';

class BuynowUi extends StatelessWidget {
  const BuynowUi({
    super.key,
    required this.fees,
    required this.order,
    required this.taxes,
    required this.total,
  });
  final String order;
  final String taxes;
  final String fees;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20),
        CustomText(
          text: 'Order summary',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        CustomListtile(
          text: 'order',
          price: order,
          color: Colors.grey.shade600,
        ),
        CustomListtile(
          text: 'Taxes',
          price: taxes,
          color: Colors.grey.shade600,
        ),
        CustomListtile(
          text: 'Delivery fees',
          price: fees,
          color: Colors.grey.shade600,
        ),
        Gap(16),
        Divider(color: Colors.grey, thickness: 0.3, indent: 10, endIndent: 25),
        CustomListtile(
          text: 'Total:',
          price: total,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        Gap(18),
        CustomListtile(
          size: 14,
          color: Colors.black,
          text: 'Estimated delivery time:',
          price: '15 - 30 mins',
        ),
        Gap(60),
        CustomText(
          text: 'Payment methods',
          color: Colors.black,
          size: 19,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
