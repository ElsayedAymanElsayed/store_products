import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/cubit/cubit_cart_cubit.dart';
import 'package:store_products/models/product_model.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomCartandlist extends StatelessWidget {
  const CustomCartandlist({super.key, required this.product});
  final ProductModel product;
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
              Gap(10),
              Image.network(product.image, height: 70, width: 70),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Product title', color: Colors.black),
                  Gap(10),
                  CustomText(
                    text:
                        '\$'
                        '${product.price}',
                    color: Colors.black,
                  ),
                ],
              ),
              Gap(120),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 11,
                          backgroundColor: kprimryColor,
                          child: GestureDetector(
                            onTap: () => context
                                .read<CubitCart>()
                                .removeproducts(product),
                            child: Icon(
                              Icons.remove,
                              color: kwiteColor,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
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
