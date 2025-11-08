import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});
  @override
  Widget build(BuildContext context) {
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
                child: CustomText(text: '9'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CustomText(text: '\$44', size: 19),
        ),
      ],
    );
  }
}
