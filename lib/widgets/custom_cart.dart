import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/cubit/cubit_cart_cubit.dart';
import 'package:store_products/models/product_model.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomCart extends StatefulWidget {
  const CustomCart({super.key, required this.product});
  final ProductModel product;
  @override
  State<CustomCart> createState() => _CustomCartState();
}

class _CustomCartState extends State<CustomCart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: 160,
          decoration: BoxDecoration(),
          child: Card(
            elevation: 20,
            color: kwiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(text: 'Handbag lv', color: Colors.grey),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text:
                            '\$'
                            '${widget.product.price.toString().substring(0, 2)}',
                        color: Colors.black,
                        size: 18,
                      ),
                      const Gap(80),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            context.read<CubitCart>().add(widget.product);
                          },

                          child: Icon(Icons.add, color: kwiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          right: 0,
          left: 0,
          bottom: 130,
          child: SizedBox(
            height: 120,
            width: 100,
            child: CachedNetworkImage(
              imageUrl: widget.product.image,
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator(color: kprimryColor)),
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, color: kprimryColor),
            ),
          ),
        ),
      ],
    );
  }
}
