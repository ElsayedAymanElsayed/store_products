import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor/buyNow_ui.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_bottom.dart';
import 'package:store_products/widgets/custom_cash_visa.dart';

class BuynowView extends StatelessWidget {
  const BuynowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuynowUi(
                fees: '\$1.5',
                order: '\$66.5',
                taxes: '\$0.3',
                total: '\$99.5',
              ),
              Gap(12),
              CustomCashVisa(),
              Gap(12),
              CustomText(text: 'Total price', color: Colors.grey.shade600),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: '\$88.1',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomBottom(
                    text: 'Pay Now',
                    size: 16,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              height: 270,
                              width: 70,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Gap(20),
                                    CircleAvatar(
                                      backgroundColor: kprimryColor,
                                      radius: 25,
                                      child: Icon(
                                        FontAwesomeIcons.check,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Gap(14),
                                    CustomText(
                                      text: 'Success !',
                                      color: kprimryColor,
                                      fontWeight: FontWeight.bold,
                                      size: 25,
                                    ),
                                    CustomText(
                                      text:
                                          'Your payment was successful\nA receipt for this purchase has\n      been sent to your email',
                                      color: Colors.grey.shade500,
                                      size: 13,
                                    ),
                                    Gap(15),
                                    CustomBottom(
                                      text: 'Go Back',
                                      onTap: () => Navigator.pop(context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
