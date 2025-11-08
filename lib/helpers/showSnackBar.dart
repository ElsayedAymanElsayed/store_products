import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: CustomText(text: message, color: kprimryColor, size: 14),
      backgroundColor: Colors.white,
    ),
  );
}
