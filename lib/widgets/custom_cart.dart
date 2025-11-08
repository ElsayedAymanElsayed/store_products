import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key});
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(text: 'Handbag lv', color: Colors.grey),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(text: '\$199', color: Colors.black, size: 18),
                      const Gap(65),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add, color: kwiteColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: -110,
          child: CachedNetworkImage(
            imageUrl:
                "https://cdn.dummyjson.com/products/images/mobile-accessories/Apple%20Airpods/thumbnail.png",
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator(color: kprimryColor)),
            errorWidget: (context, url, error) =>
                Icon(Icons.error, color: kprimryColor),
          ),
        ),
      ],
    );
  }
}
