import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_products/constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.size, this.color});
  final String text;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? kwiteColor,
        fontSize: size ?? 16,
      ),
    );
  }
}
