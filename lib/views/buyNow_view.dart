import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor/buyNow_ui.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_cash_visa.dart';

class BuynowView extends StatelessWidget {
  const BuynowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            BuynowUi(
              fees: '\$1.5',
              order: '\$66',
              taxes: '\$0.3',
              total: '\$99.5',
            ),
            Gap(12),
            CustomCashVisa(),
          ],
        ),
      ),
    );
  }
}
