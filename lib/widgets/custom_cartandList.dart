import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_bottom.dart';

class CustomCartandlist extends StatelessWidget {
  const CustomCartandlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
      child: SizedBox(
        width: double.infinity,
        height: 110,
        child: Card(
          color: kwiteColor,
          elevation: 8,
          child: Row(
            children: [
              Image.network(
                'https://cdn.dummyjson.com/products/images/mobile-accessories/Apple%20Airpods/thumbnail.png',
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Product title', color: Colors.black),
                  Gap(10),
                  CustomText(text: '\$55', color: Colors.black),
                ],
              ),
              Gap(12),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Gap(16),
                        CircleAvatar(
                          radius: 11,
                          backgroundColor: kprimryColor,
                          child: Icon(Icons.add, color: kwiteColor, size: 18),
                        ),
                        Gap(10),
                        Text(
                          '21',
                          style: TextStyle(
                            color: kprimryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Gap(12),
                        CircleAvatar(
                          radius: 11,
                          backgroundColor: kprimryColor,
                          child: Icon(
                            Icons.remove,
                            color: kwiteColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    CustomBottom(text: 'Remove', size: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
