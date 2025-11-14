import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/cubit/cubit_cart_cubit.dart';
import 'package:store_products/widgets/custom_Text.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCart, CartState>(
      builder: (context, state) {
        double price = 0.0;
        int count = 0;
        if (state is StateCartdata) {
          price = state.price;
          count = state.products.length;
        }
        return Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.cartPlus, color: kwiteColor),
                ),
                Positioned(
                  bottom: 19,
                  right: 30,

                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade600,
                    ),
                    child: CustomText(text: '$count'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CustomText(
                text:
                    '\$'
                    '${price.round()}',
                size: 19,
              ),
            ),
          ],
        );
      },
    );
  }
}
